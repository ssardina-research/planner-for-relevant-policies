(define (problem FR_6_7)
 (:domain first-response)
 (:objects  l1 l2 l3 l4 l5 l6  - location
	    f1 f2 f3 - fire_unit
	    v1 v2 v3 v4 v5 v6 v7 - victim
	    m1 m2 m3 m4 m5 - medical_unit
)
 (:init 
	;;strategic locations
     (hospital l2)
     (hospital l5)
     (hospital l5)
     (hospital l2)
     (hospital l4)
     (hospital l1)
     (water-at l6)
     (water-at l3)
     (water-at l5)
     (water-at l2)
	;;disaster info
     (fire l4)
     (victim-at v1 l1)
     (victim-status v1 hurt)
     (fire l4)
     (victim-at v2 l6)
     (victim-status v2 dying)
     (fire l5)
     (victim-at v3 l2)
     (victim-status v3 dying)
     (fire l5)
     (victim-at v4 l2)
     (victim-status v4 hurt)
     (fire l4)
     (victim-at v5 l1)
     (victim-status v5 hurt)
     (fire l6)
     (victim-at v6 l3)
     (victim-status v6 dying)
     (fire l6)
     (victim-at v7 l2)
     (victim-status v7 dying)
	;;map info
	(adjacent l1 l1)
	(adjacent l2 l2)
	(adjacent l3 l3)
	(adjacent l4 l4)
	(adjacent l5 l5)
	(adjacent l6 l6)
   (adjacent l3 l1)
   (adjacent l1 l3)
   (adjacent l3 l2)
   (adjacent l2 l3)
   (adjacent l3 l3)
   (adjacent l3 l3)
   (adjacent l4 l1)
   (adjacent l1 l4)
   (adjacent l4 l2)
   (adjacent l2 l4)
   (adjacent l4 l3)
   (adjacent l3 l4)
   (adjacent l5 l1)
   (adjacent l1 l5)
   (adjacent l5 l2)
   (adjacent l2 l5)
   (adjacent l5 l3)
   (adjacent l3 l5)
   (adjacent l5 l4)
   (adjacent l4 l5)
   (adjacent l5 l5)
   (adjacent l5 l5)
	(fire-unit-at f1 l3)
	(fire-unit-at f2 l6)
	(fire-unit-at f3 l2)
	(medical-unit-at m1 l5)
	(medical-unit-at m2 l1)
	(medical-unit-at m3 l4)
	(medical-unit-at m4 l1)
	(medical-unit-at m5 l1)
	)
 (:goal (and  (nfire l4) (nfire l4) (nfire l5) (nfire l5) (nfire l4) (nfire l6) (nfire l6)  (victim-status v1 healthy) (victim-status v2 healthy) (victim-status v3 healthy) (victim-status v4 healthy) (victim-status v5 healthy) (victim-status v6 healthy) (victim-status v7 healthy)))
 )