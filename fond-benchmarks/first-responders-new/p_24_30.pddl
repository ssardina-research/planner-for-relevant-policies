(define (problem FR_24_30)
 (:domain first-response)
 (:objects  l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17 l18 l19 l20 l21 l22 l23 l24  - location
	    f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 - fire_unit
	    v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 - victim
	    m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 m12 m13 m14 m15 m16 m17 m18 m19 m20 - medical_unit
)
 (:init 
	;;strategic locations
     (hospital l10)
     (hospital l5)
     (hospital l23)
     (hospital l17)
     (hospital l19)
     (hospital l11)
     (hospital l21)
     (hospital l13)
     (hospital l9)
     (hospital l9)
     (hospital l23)
     (hospital l21)
     (hospital l20)
     (hospital l12)
     (water-at l20)
     (water-at l8)
     (water-at l21)
     (water-at l5)
     (water-at l7)
     (water-at l16)
     (water-at l11)
     (water-at l5)
     (water-at l23)
     (water-at l22)
	;;disaster info
     (fire l12)
     (victim-at v1 l3)
     (victim-status v1 hurt)
     (fire l18)
     (victim-at v2 l10)
     (victim-status v2 hurt)
     (fire l17)
     (victim-at v3 l18)
     (victim-status v3 dying)
     (fire l10)
     (victim-at v4 l18)
     (victim-status v4 dying)
     (fire l15)
     (victim-at v5 l3)
     (victim-status v5 hurt)
     (fire l6)
     (victim-at v6 l19)
     (victim-status v6 hurt)
     (fire l10)
     (victim-at v7 l15)
     (victim-status v7 hurt)
     (fire l23)
     (victim-at v8 l6)
     (victim-status v8 hurt)
     (fire l18)
     (victim-at v9 l16)
     (victim-status v9 dying)
     (fire l19)
     (victim-at v10 l2)
     (victim-status v10 hurt)
     (fire l18)
     (victim-at v11 l20)
     (victim-status v11 hurt)
     (fire l1)
     (victim-at v12 l5)
     (victim-status v12 hurt)
     (fire l1)
     (victim-at v13 l18)
     (victim-status v13 dying)
     (fire l2)
     (victim-at v14 l9)
     (victim-status v14 hurt)
     (fire l24)
     (victim-at v15 l11)
     (victim-status v15 hurt)
     (fire l4)
     (victim-at v16 l15)
     (victim-status v16 hurt)
     (fire l23)
     (victim-at v17 l24)
     (victim-status v17 hurt)
     (fire l2)
     (victim-at v18 l14)
     (victim-status v18 hurt)
     (fire l18)
     (victim-at v19 l3)
     (victim-status v19 hurt)
     (fire l5)
     (victim-at v20 l13)
     (victim-status v20 dying)
     (fire l21)
     (victim-at v21 l8)
     (victim-status v21 hurt)
     (fire l3)
     (victim-at v22 l22)
     (victim-status v22 dying)
     (fire l10)
     (victim-at v23 l18)
     (victim-status v23 hurt)
     (fire l16)
     (victim-at v24 l17)
     (victim-status v24 hurt)
     (fire l23)
     (victim-at v25 l3)
     (victim-status v25 dying)
     (fire l24)
     (victim-at v26 l18)
     (victim-status v26 hurt)
     (fire l11)
     (victim-at v27 l14)
     (victim-status v27 hurt)
     (fire l9)
     (victim-at v28 l3)
     (victim-status v28 hurt)
     (fire l20)
     (victim-at v29 l6)
     (victim-status v29 hurt)
     (fire l10)
     (victim-at v30 l8)
     (victim-status v30 dying)
	;;map info
	(adjacent l1 l1)
	(adjacent l2 l2)
	(adjacent l3 l3)
	(adjacent l4 l4)
	(adjacent l5 l5)
	(adjacent l6 l6)
	(adjacent l7 l7)
	(adjacent l8 l8)
	(adjacent l9 l9)
	(adjacent l10 l10)
	(adjacent l11 l11)
	(adjacent l12 l12)
	(adjacent l13 l13)
	(adjacent l14 l14)
	(adjacent l15 l15)
	(adjacent l16 l16)
	(adjacent l17 l17)
	(adjacent l18 l18)
	(adjacent l19 l19)
	(adjacent l20 l20)
	(adjacent l21 l21)
	(adjacent l22 l22)
	(adjacent l23 l23)
	(adjacent l24 l24)
   (adjacent l1 l1)
   (adjacent l1 l1)
   (adjacent l1 l2)
   (adjacent l2 l1)
   (adjacent l1 l3)
   (adjacent l3 l1)
   (adjacent l1 l4)
   (adjacent l4 l1)
   (adjacent l1 l5)
   (adjacent l5 l1)
   (adjacent l1 l6)
   (adjacent l6 l1)
   (adjacent l1 l7)
   (adjacent l7 l1)
   (adjacent l1 l8)
   (adjacent l8 l1)
   (adjacent l1 l9)
   (adjacent l9 l1)
   (adjacent l1 l10)
   (adjacent l10 l1)
   (adjacent l1 l11)
   (adjacent l11 l1)
   (adjacent l1 l12)
   (adjacent l12 l1)
   (adjacent l2 l1)
   (adjacent l1 l2)
   (adjacent l2 l2)
   (adjacent l2 l2)
   (adjacent l2 l3)
   (adjacent l3 l2)
   (adjacent l2 l4)
   (adjacent l4 l2)
   (adjacent l2 l5)
   (adjacent l5 l2)
   (adjacent l2 l6)
   (adjacent l6 l2)
   (adjacent l2 l7)
   (adjacent l7 l2)
   (adjacent l2 l8)
   (adjacent l8 l2)
   (adjacent l2 l9)
   (adjacent l9 l2)
   (adjacent l2 l10)
   (adjacent l10 l2)
   (adjacent l2 l11)
   (adjacent l11 l2)
   (adjacent l2 l12)
   (adjacent l12 l2)
   (adjacent l2 l13)
   (adjacent l13 l2)
   (adjacent l2 l14)
   (adjacent l14 l2)
   (adjacent l2 l15)
   (adjacent l15 l2)
   (adjacent l2 l16)
   (adjacent l16 l2)
   (adjacent l2 l17)
   (adjacent l17 l2)
   (adjacent l4 l1)
   (adjacent l1 l4)
   (adjacent l4 l2)
   (adjacent l2 l4)
   (adjacent l4 l3)
   (adjacent l3 l4)
   (adjacent l4 l4)
   (adjacent l4 l4)
   (adjacent l4 l5)
   (adjacent l5 l4)
   (adjacent l4 l6)
   (adjacent l6 l4)
   (adjacent l4 l7)
   (adjacent l7 l4)
   (adjacent l4 l8)
   (adjacent l8 l4)
   (adjacent l4 l9)
   (adjacent l9 l4)
   (adjacent l4 l10)
   (adjacent l10 l4)
   (adjacent l4 l11)
   (adjacent l11 l4)
   (adjacent l4 l12)
   (adjacent l12 l4)
   (adjacent l4 l13)
   (adjacent l13 l4)
   (adjacent l4 l14)
   (adjacent l14 l4)
   (adjacent l4 l15)
   (adjacent l15 l4)
   (adjacent l4 l16)
   (adjacent l16 l4)
   (adjacent l4 l17)
   (adjacent l17 l4)
   (adjacent l4 l18)
   (adjacent l18 l4)
   (adjacent l4 l19)
   (adjacent l19 l4)
   (adjacent l4 l20)
   (adjacent l20 l4)
   (adjacent l4 l21)
   (adjacent l21 l4)
   (adjacent l4 l22)
   (adjacent l22 l4)
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
   (adjacent l5 l6)
   (adjacent l6 l5)
   (adjacent l5 l7)
   (adjacent l7 l5)
   (adjacent l5 l8)
   (adjacent l8 l5)
   (adjacent l5 l9)
   (adjacent l9 l5)
   (adjacent l6 l1)
   (adjacent l1 l6)
   (adjacent l6 l2)
   (adjacent l2 l6)
   (adjacent l6 l3)
   (adjacent l3 l6)
   (adjacent l6 l4)
   (adjacent l4 l6)
   (adjacent l6 l5)
   (adjacent l5 l6)
   (adjacent l6 l6)
   (adjacent l6 l6)
   (adjacent l6 l7)
   (adjacent l7 l6)
   (adjacent l7 l1)
   (adjacent l1 l7)
   (adjacent l7 l2)
   (adjacent l2 l7)
   (adjacent l7 l3)
   (adjacent l3 l7)
   (adjacent l7 l4)
   (adjacent l4 l7)
   (adjacent l7 l5)
   (adjacent l5 l7)
   (adjacent l7 l6)
   (adjacent l6 l7)
   (adjacent l7 l7)
   (adjacent l7 l7)
   (adjacent l7 l8)
   (adjacent l8 l7)
   (adjacent l8 l1)
   (adjacent l1 l8)
   (adjacent l8 l2)
   (adjacent l2 l8)
   (adjacent l8 l3)
   (adjacent l3 l8)
   (adjacent l8 l4)
   (adjacent l4 l8)
   (adjacent l8 l5)
   (adjacent l5 l8)
   (adjacent l8 l6)
   (adjacent l6 l8)
   (adjacent l8 l7)
   (adjacent l7 l8)
   (adjacent l8 l8)
   (adjacent l8 l8)
   (adjacent l8 l9)
   (adjacent l9 l8)
   (adjacent l9 l1)
   (adjacent l1 l9)
   (adjacent l9 l2)
   (adjacent l2 l9)
   (adjacent l9 l3)
   (adjacent l3 l9)
   (adjacent l9 l4)
   (adjacent l4 l9)
   (adjacent l9 l5)
   (adjacent l5 l9)
   (adjacent l9 l6)
   (adjacent l6 l9)
   (adjacent l9 l7)
   (adjacent l7 l9)
   (adjacent l9 l8)
   (adjacent l8 l9)
   (adjacent l9 l9)
   (adjacent l9 l9)
   (adjacent l9 l10)
   (adjacent l10 l9)
   (adjacent l9 l11)
   (adjacent l11 l9)
   (adjacent l9 l12)
   (adjacent l12 l9)
   (adjacent l9 l13)
   (adjacent l13 l9)
   (adjacent l9 l14)
   (adjacent l14 l9)
   (adjacent l9 l15)
   (adjacent l15 l9)
   (adjacent l9 l16)
   (adjacent l16 l9)
   (adjacent l9 l17)
   (adjacent l17 l9)
   (adjacent l10 l1)
   (adjacent l1 l10)
   (adjacent l10 l2)
   (adjacent l2 l10)
   (adjacent l10 l3)
   (adjacent l3 l10)
   (adjacent l10 l4)
   (adjacent l4 l10)
   (adjacent l10 l5)
   (adjacent l5 l10)
   (adjacent l10 l6)
   (adjacent l6 l10)
   (adjacent l10 l7)
   (adjacent l7 l10)
   (adjacent l10 l8)
   (adjacent l8 l10)
   (adjacent l10 l9)
   (adjacent l9 l10)
   (adjacent l11 l1)
   (adjacent l1 l11)
   (adjacent l11 l2)
   (adjacent l2 l11)
   (adjacent l12 l1)
   (adjacent l1 l12)
   (adjacent l12 l2)
   (adjacent l2 l12)
   (adjacent l12 l3)
   (adjacent l3 l12)
   (adjacent l12 l4)
   (adjacent l4 l12)
   (adjacent l12 l5)
   (adjacent l5 l12)
   (adjacent l12 l6)
   (adjacent l6 l12)
   (adjacent l12 l7)
   (adjacent l7 l12)
   (adjacent l12 l8)
   (adjacent l8 l12)
   (adjacent l12 l9)
   (adjacent l9 l12)
   (adjacent l12 l10)
   (adjacent l10 l12)
   (adjacent l12 l11)
   (adjacent l11 l12)
   (adjacent l13 l1)
   (adjacent l1 l13)
   (adjacent l13 l2)
   (adjacent l2 l13)
   (adjacent l13 l3)
   (adjacent l3 l13)
   (adjacent l13 l4)
   (adjacent l4 l13)
   (adjacent l13 l5)
   (adjacent l5 l13)
   (adjacent l13 l6)
   (adjacent l6 l13)
   (adjacent l13 l7)
   (adjacent l7 l13)
   (adjacent l14 l1)
   (adjacent l1 l14)
   (adjacent l15 l1)
   (adjacent l1 l15)
   (adjacent l15 l2)
   (adjacent l2 l15)
   (adjacent l15 l3)
   (adjacent l3 l15)
   (adjacent l15 l4)
   (adjacent l4 l15)
   (adjacent l15 l5)
   (adjacent l5 l15)
   (adjacent l15 l6)
   (adjacent l6 l15)
   (adjacent l15 l7)
   (adjacent l7 l15)
   (adjacent l15 l8)
   (adjacent l8 l15)
   (adjacent l15 l9)
   (adjacent l9 l15)
   (adjacent l15 l10)
   (adjacent l10 l15)
   (adjacent l15 l11)
   (adjacent l11 l15)
   (adjacent l15 l12)
   (adjacent l12 l15)
   (adjacent l15 l13)
   (adjacent l13 l15)
   (adjacent l15 l14)
   (adjacent l14 l15)
   (adjacent l15 l15)
   (adjacent l15 l15)
   (adjacent l15 l16)
   (adjacent l16 l15)
   (adjacent l15 l17)
   (adjacent l17 l15)
   (adjacent l15 l18)
   (adjacent l18 l15)
   (adjacent l16 l1)
   (adjacent l1 l16)
   (adjacent l16 l2)
   (adjacent l2 l16)
   (adjacent l16 l3)
   (adjacent l3 l16)
   (adjacent l16 l4)
   (adjacent l4 l16)
   (adjacent l16 l5)
   (adjacent l5 l16)
   (adjacent l16 l6)
   (adjacent l6 l16)
   (adjacent l16 l7)
   (adjacent l7 l16)
   (adjacent l16 l8)
   (adjacent l8 l16)
   (adjacent l16 l9)
   (adjacent l9 l16)
   (adjacent l16 l10)
   (adjacent l10 l16)
   (adjacent l16 l11)
   (adjacent l11 l16)
   (adjacent l16 l12)
   (adjacent l12 l16)
   (adjacent l16 l13)
   (adjacent l13 l16)
   (adjacent l16 l14)
   (adjacent l14 l16)
   (adjacent l16 l15)
   (adjacent l15 l16)
   (adjacent l16 l16)
   (adjacent l16 l16)
   (adjacent l16 l17)
   (adjacent l17 l16)
   (adjacent l16 l18)
   (adjacent l18 l16)
   (adjacent l16 l19)
   (adjacent l19 l16)
   (adjacent l16 l20)
   (adjacent l20 l16)
   (adjacent l17 l1)
   (adjacent l1 l17)
   (adjacent l17 l2)
   (adjacent l2 l17)
   (adjacent l17 l3)
   (adjacent l3 l17)
   (adjacent l17 l4)
   (adjacent l4 l17)
   (adjacent l17 l5)
   (adjacent l5 l17)
   (adjacent l17 l6)
   (adjacent l6 l17)
   (adjacent l17 l7)
   (adjacent l7 l17)
   (adjacent l17 l8)
   (adjacent l8 l17)
   (adjacent l17 l9)
   (adjacent l9 l17)
   (adjacent l17 l10)
   (adjacent l10 l17)
   (adjacent l17 l11)
   (adjacent l11 l17)
   (adjacent l17 l12)
   (adjacent l12 l17)
   (adjacent l17 l13)
   (adjacent l13 l17)
   (adjacent l17 l14)
   (adjacent l14 l17)
   (adjacent l18 l1)
   (adjacent l1 l18)
   (adjacent l18 l2)
   (adjacent l2 l18)
   (adjacent l18 l3)
   (adjacent l3 l18)
   (adjacent l18 l4)
   (adjacent l4 l18)
   (adjacent l18 l5)
   (adjacent l5 l18)
   (adjacent l18 l6)
   (adjacent l6 l18)
   (adjacent l18 l7)
   (adjacent l7 l18)
   (adjacent l18 l8)
   (adjacent l8 l18)
   (adjacent l18 l9)
   (adjacent l9 l18)
   (adjacent l19 l1)
   (adjacent l1 l19)
   (adjacent l19 l2)
   (adjacent l2 l19)
   (adjacent l19 l3)
   (adjacent l3 l19)
   (adjacent l19 l4)
   (adjacent l4 l19)
   (adjacent l19 l5)
   (adjacent l5 l19)
   (adjacent l19 l6)
   (adjacent l6 l19)
   (adjacent l19 l7)
   (adjacent l7 l19)
   (adjacent l19 l8)
   (adjacent l8 l19)
   (adjacent l19 l9)
   (adjacent l9 l19)
   (adjacent l19 l10)
   (adjacent l10 l19)
   (adjacent l19 l11)
   (adjacent l11 l19)
   (adjacent l20 l1)
   (adjacent l1 l20)
   (adjacent l20 l2)
   (adjacent l2 l20)
   (adjacent l20 l3)
   (adjacent l3 l20)
   (adjacent l20 l4)
   (adjacent l4 l20)
   (adjacent l20 l5)
   (adjacent l5 l20)
   (adjacent l20 l6)
   (adjacent l6 l20)
   (adjacent l20 l7)
   (adjacent l7 l20)
   (adjacent l20 l8)
   (adjacent l8 l20)
   (adjacent l20 l9)
   (adjacent l9 l20)
   (adjacent l20 l10)
   (adjacent l10 l20)
   (adjacent l21 l1)
   (adjacent l1 l21)
   (adjacent l21 l2)
   (adjacent l2 l21)
   (adjacent l21 l3)
   (adjacent l3 l21)
   (adjacent l21 l4)
   (adjacent l4 l21)
   (adjacent l21 l5)
   (adjacent l5 l21)
   (adjacent l21 l6)
   (adjacent l6 l21)
   (adjacent l21 l7)
   (adjacent l7 l21)
   (adjacent l21 l8)
   (adjacent l8 l21)
   (adjacent l21 l9)
   (adjacent l9 l21)
   (adjacent l21 l10)
   (adjacent l10 l21)
   (adjacent l21 l11)
   (adjacent l11 l21)
   (adjacent l21 l12)
   (adjacent l12 l21)
   (adjacent l21 l13)
   (adjacent l13 l21)
   (adjacent l21 l14)
   (adjacent l14 l21)
   (adjacent l21 l15)
   (adjacent l15 l21)
   (adjacent l21 l16)
   (adjacent l16 l21)
   (adjacent l21 l17)
   (adjacent l17 l21)
   (adjacent l22 l1)
   (adjacent l1 l22)
   (adjacent l22 l2)
   (adjacent l2 l22)
   (adjacent l22 l3)
   (adjacent l3 l22)
   (adjacent l22 l4)
   (adjacent l4 l22)
   (adjacent l22 l5)
   (adjacent l5 l22)
   (adjacent l22 l6)
   (adjacent l6 l22)
   (adjacent l22 l7)
   (adjacent l7 l22)
   (adjacent l22 l8)
   (adjacent l8 l22)
   (adjacent l22 l9)
   (adjacent l9 l22)
   (adjacent l22 l10)
   (adjacent l10 l22)
   (adjacent l23 l1)
   (adjacent l1 l23)
   (adjacent l23 l2)
   (adjacent l2 l23)
   (adjacent l23 l3)
   (adjacent l3 l23)
   (adjacent l23 l4)
   (adjacent l4 l23)
   (adjacent l23 l5)
   (adjacent l5 l23)
   (adjacent l23 l6)
   (adjacent l6 l23)
   (adjacent l23 l7)
   (adjacent l7 l23)
   (adjacent l23 l8)
   (adjacent l8 l23)
   (adjacent l23 l9)
   (adjacent l9 l23)
   (adjacent l23 l10)
   (adjacent l10 l23)
   (adjacent l23 l11)
   (adjacent l11 l23)
   (adjacent l23 l12)
   (adjacent l12 l23)
   (adjacent l23 l13)
   (adjacent l13 l23)
   (adjacent l23 l14)
   (adjacent l14 l23)
   (adjacent l23 l15)
   (adjacent l15 l23)
   (adjacent l23 l16)
   (adjacent l16 l23)
   (adjacent l23 l17)
   (adjacent l17 l23)
	(fire-unit-at f1 l23)
	(fire-unit-at f2 l23)
	(fire-unit-at f3 l22)
	(fire-unit-at f4 l24)
	(fire-unit-at f5 l20)
	(fire-unit-at f6 l11)
	(fire-unit-at f7 l19)
	(fire-unit-at f8 l13)
	(fire-unit-at f9 l18)
	(fire-unit-at f10 l10)
	(medical-unit-at m1 l2)
	(medical-unit-at m2 l1)
	(medical-unit-at m3 l8)
	(medical-unit-at m4 l2)
	(medical-unit-at m5 l24)
	(medical-unit-at m6 l24)
	(medical-unit-at m7 l18)
	(medical-unit-at m8 l6)
	(medical-unit-at m9 l6)
	(medical-unit-at m10 l18)
	(medical-unit-at m11 l2)
	(medical-unit-at m12 l3)
	(medical-unit-at m13 l1)
	(medical-unit-at m14 l1)
	(medical-unit-at m15 l11)
	(medical-unit-at m16 l4)
	(medical-unit-at m17 l16)
	(medical-unit-at m18 l20)
	(medical-unit-at m19 l8)
	(medical-unit-at m20 l1)
	)
 (:goal (and  (nfire l12) (nfire l18) (nfire l17) (nfire l10) (nfire l15) (nfire l6) (nfire l10) (nfire l23) (nfire l18) (nfire l19) (nfire l18) (nfire l1) (nfire l1) (nfire l2) (nfire l24) (nfire l4) (nfire l23) (nfire l2) (nfire l18) (nfire l5) (nfire l21) (nfire l3) (nfire l10) (nfire l16) (nfire l23) (nfire l24) (nfire l11) (nfire l9) (nfire l20) (nfire l10)  (victim-status v1 healthy) (victim-status v2 healthy) (victim-status v3 healthy) (victim-status v4 healthy) (victim-status v5 healthy) (victim-status v6 healthy) (victim-status v7 healthy) (victim-status v8 healthy) (victim-status v9 healthy) (victim-status v10 healthy) (victim-status v11 healthy) (victim-status v12 healthy) (victim-status v13 healthy) (victim-status v14 healthy) (victim-status v15 healthy) (victim-status v16 healthy) (victim-status v17 healthy) (victim-status v18 healthy) (victim-status v19 healthy) (victim-status v20 healthy) (victim-status v21 healthy) (victim-status v22 healthy) (victim-status v23 healthy) (victim-status v24 healthy) (victim-status v25 healthy) (victim-status v26 healthy) (victim-status v27 healthy) (victim-status v28 healthy) (victim-status v29 healthy) (victim-status v30 healthy)))
 )