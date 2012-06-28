#include "deadend.h"


bool is_deadend(State &state) {
    ((AdditiveHeuristic *)g_heuristic_for_reachability)->reset();
    return (-1 == ((AdditiveHeuristic *)g_heuristic_for_reachability)->compute_add_and_ff(state));
}


void generalize_deadend(State &state) {
    
    // If the whole state isn't recognized as a deadend, then don't bother
    //  looking for a subset of the state
    if (!is_deadend(state))
        return;
    
    // We go through each variable and unset it, checking if the relaxed reachability
    //  is violated.
    for (int i = 0; i < g_variable_name.size(); i++) {
        int old_val = state[i];
        state[i] = -1;
        
        // If relaxing variable i causes us to reach the goal, keep it in
        if (!is_deadend(state))
            state[i] = old_val;
    }
    
    //cout << "Found relaxed deadend:" << endl;
    //state.dump();
}

void update_deadends(vector<State *> &failed_states) {
    list<PolicyItem *> de_items;
    list<PolicyItem *> de_states;
    
    for (int i = 0; i < failed_states.size(); i++) {
        // Generalize the deadend if need be
        State * failed_state = failed_states[i];
        //cout << "Creating forbidden state-action pairs for deadend:" << endl;
        //failed_state->dump();
        
        // Get the regressable operators for the given state.
        vector<PolicyItem *> reg_items;
        g_regressable_ops->generate_applicable_items(*failed_state, reg_items, true);
        
        // For each operator, create a new deadend avoidance pair
        for (int j = 0; j < reg_items.size(); j++) {
            RegressableOperator *ro = (RegressableOperator*)(reg_items[j]);
            de_items.push_back(new NondetDeadend(new State(*failed_state, *(ro->op), false),
                                                     ro->op->get_nondet_name()));

            //cout << "Creating new forbidden state-action pair:" << endl;
            //de_items.back()->dump();

            de_states.push_back(new NondetDeadend(new State(*failed_state),
                                                     ro->op->get_nondet_name()));
        }
    }
    g_deadend_policy->update_policy(de_items);
    g_deadend_states->update_policy(de_states);
}


void DeadendAwareSuccessorGenerator::generate_applicable_ops(const State &curr, vector<const Operator *> &ops) {
    if (g_detect_deadends && g_deadend_policy) {
        
        vector<PolicyItem *> reg_items;
        vector<const Operator *> orig_ops;
        
        g_successor_generator_orig->generate_applicable_ops(curr, orig_ops);
        g_deadend_policy->generate_applicable_items(curr, reg_items);
        
        set<string> forbidden;
        for (int i = 0; i < reg_items.size(); i++)
            forbidden.insert(((NondetDeadend*)(reg_items[i]))->op_name);
        
        for (int i = 0; i < orig_ops.size(); i++) {
            if (0 == forbidden.count(orig_ops[i]->get_nondet_name())) {
                //cout << "Allowing operator " << orig_ops[i]->get_name() << endl;
                ops.push_back(orig_ops[i]);
            }
            else {
                /* HAZ: Since we are using the ff heuristic with preferred operators,
                 *      we don't want the preferred operators to sneak into the applicable
                 *      list of actions. As such, we "mark" the operator which prevents
                 *      the operator from being added. See LazySearch::get_successor_operators
                 *      for where this occurrs.
                 */
                orig_ops[i]->mark();
                
                //cout << "Forbidding operator " << orig_ops[i]->get_name() << endl;
            }
        }
        
        // Add this state as a deadend if we have ruled out everything
        //if (ops.empty()) {
        //    cout << "Adding a new deadend state..." << endl;
        //    vector<State *> failed_states;
        //    failed_states.push_back(new State(curr));
        //    update_deadends(failed_states);
        //}
        
    } else {
        
        g_successor_generator_orig->generate_applicable_ops(curr, ops);
        
    }
    return;
}