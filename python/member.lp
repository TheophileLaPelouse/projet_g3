\* Source Pyomo model name=unknown *\

min 
obj:
+0.9473684210526315 ONE_VAR_CONSTANT
+0.019413748205521983 P_grid_plus(0)
+0.019413748205521983 P_grid_plus(1)
+0.019413748205521983 P_grid_plus(2)
+0.019413748205521983 P_grid_plus(3)
+0.019413748205521983 P_grid_plus(4)
+0.019413748205521983 P_grid_plus(5)
+0.019413748205521983 P_grid_plus(6)
+0.019413748205521983 P_grid_plus(7)
+0.019413748205521983 P_grid_plus(8)
+0.019413748205521983 P_grid_plus(9)
+0.019413748205521983 P_grid_plus(10)
+0.019413748205521983 P_grid_plus(11)
+0.019413748205521983 P_grid_plus(12)
+0.019413748205521983 P_grid_plus(13)
+0.019413748205521983 P_grid_plus(14)
+0.019413748205521983 P_grid_plus(15)
+0.019413748205521983 P_grid_plus(16)
+0.019413748205521983 P_grid_plus(17)
+0.019413748205521983 P_grid_plus(18)
+0.019413748205521983 P_grid_plus(19)
+0.019413748205521983 P_grid_plus(20)
+0.019413748205521983 P_grid_plus(21)
+0.019413748205521983 P_grid_plus(22)
+0.019413748205521983 P_grid_plus(23)
+4.284490145672665e-05 P_self(0)
+4.284490145672665e-05 P_self(1)
+4.284490145672665e-05 P_self(2)
+4.284490145672665e-05 P_self(3)
+4.284490145672665e-05 P_self(4)
+4.284490145672665e-05 P_self(5)
+4.284490145672665e-05 P_self(6)
+4.284490145672665e-05 P_self(7)
+4.284490145672665e-05 P_self(8)
+4.284490145672665e-05 P_self(9)
+4.284490145672665e-05 P_self(10)
+4.284490145672665e-05 P_self(11)
+4.284490145672665e-05 P_self(12)
+4.284490145672665e-05 P_self(13)
+4.284490145672665e-05 P_self(14)
+4.284490145672665e-05 P_self(15)
+4.284490145672665e-05 P_self(16)
+4.284490145672665e-05 P_self(17)
+4.284490145672665e-05 P_self(18)
+4.284490145672665e-05 P_self(19)
+4.284490145672665e-05 P_self(20)
+4.284490145672665e-05 P_self(21)
+4.284490145672665e-05 P_self(22)
+4.284490145672665e-05 P_self(23)
-0.0043859649122807015 device1_allocated_power(0)
-0.0043859649122807015 device1_allocated_power(1)
-0.0043859649122807015 device1_allocated_power(2)
-0.0043859649122807015 device1_allocated_power(3)
-0.0043859649122807015 device1_allocated_power(4)
-0.0043859649122807015 device1_allocated_power(5)
-0.0043859649122807015 device1_allocated_power(6)
-0.0043859649122807015 device1_allocated_power(7)
-0.0043859649122807015 device1_allocated_power(8)
-0.0043859649122807015 device1_allocated_power(9)
-0.0043859649122807015 device1_allocated_power(10)
-0.0043859649122807015 device1_allocated_power(11)
-0.0043859649122807015 device1_allocated_power(12)
-0.0043859649122807015 device1_allocated_power(13)
-0.0043859649122807015 device1_allocated_power(14)
-0.0043859649122807015 device1_allocated_power(15)
-0.0043859649122807015 device1_allocated_power(16)
-0.0043859649122807015 device1_allocated_power(17)
-0.0043859649122807015 device1_allocated_power(18)
-0.0043859649122807015 device1_allocated_power(19)
-0.0043859649122807015 device1_allocated_power(20)
-0.0043859649122807015 device1_allocated_power(21)
-0.0043859649122807015 device1_allocated_power(22)
-0.0043859649122807015 device1_allocated_power(23)
+0.10526315789473684 device0_starting_time_plus_0
+0.10526315789473684 device0_starting_time_minus_0

s.t.

c_e_P_bat_con(0)_:
+1 device2_Pcons(0)
+1 P_bat_minus(0)
+ [
-1 P_bat_plus(0) * charging(0)
-1 charging(0) * P_bat_minus(0)
]
= 0

c_e_P_bat_con(1)_:
+1 device2_Pcons(1)
+1 P_bat_minus(1)
+ [
-1 P_bat_plus(1) * charging(1)
-1 charging(1) * P_bat_minus(1)
]
= 0

c_e_P_bat_con(2)_:
+1 device2_Pcons(2)
+1 P_bat_minus(2)
+ [
-1 P_bat_plus(2) * charging(2)
-1 charging(2) * P_bat_minus(2)
]
= 0

c_e_P_bat_con(3)_:
+1 device2_Pcons(3)
+1 P_bat_minus(3)
+ [
-1 P_bat_plus(3) * charging(3)
-1 charging(3) * P_bat_minus(3)
]
= 0

c_e_P_bat_con(4)_:
+1 device2_Pcons(4)
+1 P_bat_minus(4)
+ [
-1 P_bat_plus(4) * charging(4)
-1 charging(4) * P_bat_minus(4)
]
= 0

c_e_P_bat_con(5)_:
+1 device2_Pcons(5)
+1 P_bat_minus(5)
+ [
-1 P_bat_plus(5) * charging(5)
-1 charging(5) * P_bat_minus(5)
]
= 0

c_e_P_bat_con(6)_:
+1 device2_Pcons(6)
+1 P_bat_minus(6)
+ [
-1 P_bat_plus(6) * charging(6)
-1 charging(6) * P_bat_minus(6)
]
= 0

c_e_P_bat_con(7)_:
+1 device2_Pcons(7)
+1 P_bat_minus(7)
+ [
-1 P_bat_plus(7) * charging(7)
-1 charging(7) * P_bat_minus(7)
]
= 0

c_e_P_bat_con(8)_:
+1 device2_Pcons(8)
+1 P_bat_minus(8)
+ [
-1 P_bat_plus(8) * charging(8)
-1 charging(8) * P_bat_minus(8)
]
= 0

c_e_P_bat_con(9)_:
+1 device2_Pcons(9)
+1 P_bat_minus(9)
+ [
-1 P_bat_plus(9) * charging(9)
-1 charging(9) * P_bat_minus(9)
]
= 0

c_e_P_bat_con(10)_:
+1 device2_Pcons(10)
+1 P_bat_minus(10)
+ [
-1 P_bat_plus(10) * charging(10)
-1 charging(10) * P_bat_minus(10)
]
= 0

c_e_P_bat_con(11)_:
+1 device2_Pcons(11)
+1 P_bat_minus(11)
+ [
-1 P_bat_plus(11) * charging(11)
-1 charging(11) * P_bat_minus(11)
]
= 0

c_e_P_bat_con(12)_:
+1 device2_Pcons(12)
+1 P_bat_minus(12)
+ [
-1 P_bat_plus(12) * charging(12)
-1 charging(12) * P_bat_minus(12)
]
= 0

c_e_P_bat_con(13)_:
+1 device2_Pcons(13)
+1 P_bat_minus(13)
+ [
-1 P_bat_plus(13) * charging(13)
-1 charging(13) * P_bat_minus(13)
]
= 0

c_e_P_bat_con(14)_:
+1 device2_Pcons(14)
+1 P_bat_minus(14)
+ [
-1 P_bat_plus(14) * charging(14)
-1 charging(14) * P_bat_minus(14)
]
= 0

c_e_P_bat_con(15)_:
+1 device2_Pcons(15)
+1 P_bat_minus(15)
+ [
-1 P_bat_plus(15) * charging(15)
-1 charging(15) * P_bat_minus(15)
]
= 0

c_e_P_bat_con(16)_:
+1 device2_Pcons(16)
+1 P_bat_minus(16)
+ [
-1 P_bat_plus(16) * charging(16)
-1 charging(16) * P_bat_minus(16)
]
= 0

c_e_P_bat_con(17)_:
+1 device2_Pcons(17)
+1 P_bat_minus(17)
+ [
-1 P_bat_plus(17) * charging(17)
-1 charging(17) * P_bat_minus(17)
]
= 0

c_e_P_bat_con(18)_:
+1 device2_Pcons(18)
+1 P_bat_minus(18)
+ [
-1 P_bat_plus(18) * charging(18)
-1 charging(18) * P_bat_minus(18)
]
= 0

c_e_P_bat_con(19)_:
+1 device2_Pcons(19)
+1 P_bat_minus(19)
+ [
-1 P_bat_plus(19) * charging(19)
-1 charging(19) * P_bat_minus(19)
]
= 0

c_e_P_bat_con(20)_:
+1 device2_Pcons(20)
+1 P_bat_minus(20)
+ [
-1 P_bat_plus(20) * charging(20)
-1 charging(20) * P_bat_minus(20)
]
= 0

c_e_P_bat_con(21)_:
+1 device2_Pcons(21)
+1 P_bat_minus(21)
+ [
-1 P_bat_plus(21) * charging(21)
-1 charging(21) * P_bat_minus(21)
]
= 0

c_e_P_bat_con(22)_:
+1 device2_Pcons(22)
+1 P_bat_minus(22)
+ [
-1 P_bat_plus(22) * charging(22)
-1 charging(22) * P_bat_minus(22)
]
= 0

c_e_P_bat_con(23)_:
+1 device2_Pcons(23)
+1 P_bat_minus(23)
+ [
-1 P_bat_plus(23) * charging(23)
-1 charging(23) * P_bat_minus(23)
]
= 0

c_e_P_prod_con(0)_:
+1 P_self(0)
-1 P_bat_minus(0)
+ [
+1 charging(0) * P_bat_minus(0)
]
= 0

c_e_P_prod_con(1)_:
+1 P_self(1)
-1 P_bat_minus(1)
+ [
+1 charging(1) * P_bat_minus(1)
]
= 0

c_e_P_prod_con(2)_:
+1 P_self(2)
-1 P_bat_minus(2)
+ [
+1 charging(2) * P_bat_minus(2)
]
= 0

c_e_P_prod_con(3)_:
+1 P_self(3)
-1 P_bat_minus(3)
+ [
+1 charging(3) * P_bat_minus(3)
]
= 0

c_e_P_prod_con(4)_:
+1 P_self(4)
-1 P_bat_minus(4)
+ [
+1 charging(4) * P_bat_minus(4)
]
= 0

c_e_P_prod_con(5)_:
+1 P_self(5)
-1 P_bat_minus(5)
+ [
+1 charging(5) * P_bat_minus(5)
]
= 0

c_e_P_prod_con(6)_:
+1 P_self(6)
-1 P_bat_minus(6)
+ [
+1 charging(6) * P_bat_minus(6)
]
= 0

c_e_P_prod_con(7)_:
+1 P_self(7)
-1 P_bat_minus(7)
+ [
+1 charging(7) * P_bat_minus(7)
]
= 0

c_e_P_prod_con(8)_:
+1 P_self(8)
-1 P_bat_minus(8)
+ [
+1 charging(8) * P_bat_minus(8)
]
= 30

c_e_P_prod_con(9)_:
+1 P_self(9)
-1 P_bat_minus(9)
+ [
+1 charging(9) * P_bat_minus(9)
]
= 30

c_e_P_prod_con(10)_:
+1 P_self(10)
-1 P_bat_minus(10)
+ [
+1 charging(10) * P_bat_minus(10)
]
= 30

c_e_P_prod_con(11)_:
+1 P_self(11)
-1 P_bat_minus(11)
+ [
+1 charging(11) * P_bat_minus(11)
]
= 30

c_e_P_prod_con(12)_:
+1 P_self(12)
-1 P_bat_minus(12)
+ [
+1 charging(12) * P_bat_minus(12)
]
= 30

c_e_P_prod_con(13)_:
+1 P_self(13)
-1 P_bat_minus(13)
+ [
+1 charging(13) * P_bat_minus(13)
]
= 30

c_e_P_prod_con(14)_:
+1 P_self(14)
-1 P_bat_minus(14)
+ [
+1 charging(14) * P_bat_minus(14)
]
= 30

c_e_P_prod_con(15)_:
+1 P_self(15)
-1 P_bat_minus(15)
+ [
+1 charging(15) * P_bat_minus(15)
]
= 30

c_e_P_prod_con(16)_:
+1 P_self(16)
-1 P_bat_minus(16)
+ [
+1 charging(16) * P_bat_minus(16)
]
= 0

c_e_P_prod_con(17)_:
+1 P_self(17)
-1 P_bat_minus(17)
+ [
+1 charging(17) * P_bat_minus(17)
]
= 0

c_e_P_prod_con(18)_:
+1 P_self(18)
-1 P_bat_minus(18)
+ [
+1 charging(18) * P_bat_minus(18)
]
= 0

c_e_P_prod_con(19)_:
+1 P_self(19)
-1 P_bat_minus(19)
+ [
+1 charging(19) * P_bat_minus(19)
]
= 0

c_e_P_prod_con(20)_:
+1 P_self(20)
-1 P_bat_minus(20)
+ [
+1 charging(20) * P_bat_minus(20)
]
= 0

c_e_P_prod_con(21)_:
+1 P_self(21)
-1 P_bat_minus(21)
+ [
+1 charging(21) * P_bat_minus(21)
]
= 0

c_e_P_prod_con(22)_:
+1 P_self(22)
-1 P_bat_minus(22)
+ [
+1 charging(22) * P_bat_minus(22)
]
= 0

c_e_P_prod_con(23)_:
+1 P_self(23)
-1 P_bat_minus(23)
+ [
+1 charging(23) * P_bat_minus(23)
]
= 0

c_e_P_grid_con(0)_:
+1 P_grid_plus(0)
+1 P_self(0)
-1 P_grid_minus(0)
-1 device0_Pcons(0)
-1 device1_Pcons(0)
+ [
-1 P_bat_plus(0) * charging(0)
]
= 0

c_e_P_grid_con(1)_:
+1 P_grid_plus(1)
+1 P_self(1)
-1 P_grid_minus(1)
-1 device0_Pcons(1)
-1 device1_Pcons(1)
+ [
-1 P_bat_plus(1) * charging(1)
]
= 0

c_e_P_grid_con(2)_:
+1 P_grid_plus(2)
+1 P_self(2)
-1 P_grid_minus(2)
-1 device0_Pcons(2)
-1 device1_Pcons(2)
+ [
-1 P_bat_plus(2) * charging(2)
]
= 0

c_e_P_grid_con(3)_:
+1 P_grid_plus(3)
+1 P_self(3)
-1 P_grid_minus(3)
-1 device0_Pcons(3)
-1 device1_Pcons(3)
+ [
-1 P_bat_plus(3) * charging(3)
]
= 0

c_e_P_grid_con(4)_:
+1 P_grid_plus(4)
+1 P_self(4)
-1 P_grid_minus(4)
-1 device0_Pcons(4)
-1 device1_Pcons(4)
+ [
-1 P_bat_plus(4) * charging(4)
]
= 0

c_e_P_grid_con(5)_:
+1 P_grid_plus(5)
+1 P_self(5)
-1 P_grid_minus(5)
-1 device0_Pcons(5)
-1 device1_Pcons(5)
+ [
-1 P_bat_plus(5) * charging(5)
]
= 0

c_e_P_grid_con(6)_:
+1 P_grid_plus(6)
+1 P_self(6)
-1 P_grid_minus(6)
-1 device0_Pcons(6)
-1 device1_Pcons(6)
+ [
-1 P_bat_plus(6) * charging(6)
]
= 0

c_e_P_grid_con(7)_:
+1 P_grid_plus(7)
+1 P_self(7)
-1 P_grid_minus(7)
-1 device0_Pcons(7)
-1 device1_Pcons(7)
+ [
-1 P_bat_plus(7) * charging(7)
]
= 0

c_e_P_grid_con(8)_:
+1 P_grid_plus(8)
+1 P_self(8)
-1 P_grid_minus(8)
-1 device0_Pcons(8)
-1 device1_Pcons(8)
+ [
-1 P_bat_plus(8) * charging(8)
]
= 0

c_e_P_grid_con(9)_:
+1 P_grid_plus(9)
+1 P_self(9)
-1 P_grid_minus(9)
-1 device0_Pcons(9)
-1 device1_Pcons(9)
+ [
-1 P_bat_plus(9) * charging(9)
]
= 0

c_e_P_grid_con(10)_:
+1 P_grid_plus(10)
+1 P_self(10)
-1 P_grid_minus(10)
-1 device0_Pcons(10)
-1 device1_Pcons(10)
+ [
-1 P_bat_plus(10) * charging(10)
]
= 0

c_e_P_grid_con(11)_:
+1 P_grid_plus(11)
+1 P_self(11)
-1 P_grid_minus(11)
-1 device0_Pcons(11)
-1 device1_Pcons(11)
+ [
-1 P_bat_plus(11) * charging(11)
]
= 0

c_e_P_grid_con(12)_:
+1 P_grid_plus(12)
+1 P_self(12)
-1 P_grid_minus(12)
-1 device0_Pcons(12)
-1 device1_Pcons(12)
+ [
-1 P_bat_plus(12) * charging(12)
]
= 0

c_e_P_grid_con(13)_:
+1 P_grid_plus(13)
+1 P_self(13)
-1 P_grid_minus(13)
-1 device0_Pcons(13)
-1 device1_Pcons(13)
+ [
-1 P_bat_plus(13) * charging(13)
]
= 0

c_e_P_grid_con(14)_:
+1 P_grid_plus(14)
+1 P_self(14)
-1 P_grid_minus(14)
-1 device0_Pcons(14)
-1 device1_Pcons(14)
+ [
-1 P_bat_plus(14) * charging(14)
]
= 0

c_e_P_grid_con(15)_:
+1 P_grid_plus(15)
+1 P_self(15)
-1 P_grid_minus(15)
-1 device0_Pcons(15)
-1 device1_Pcons(15)
+ [
-1 P_bat_plus(15) * charging(15)
]
= 0

c_e_P_grid_con(16)_:
+1 P_grid_plus(16)
+1 P_self(16)
-1 P_grid_minus(16)
-1 device0_Pcons(16)
-1 device1_Pcons(16)
+ [
-1 P_bat_plus(16) * charging(16)
]
= 0

c_e_P_grid_con(17)_:
+1 P_grid_plus(17)
+1 P_self(17)
-1 P_grid_minus(17)
-1 device0_Pcons(17)
-1 device1_Pcons(17)
+ [
-1 P_bat_plus(17) * charging(17)
]
= 0

c_e_P_grid_con(18)_:
+1 P_grid_plus(18)
+1 P_self(18)
-1 P_grid_minus(18)
-1 device0_Pcons(18)
-1 device1_Pcons(18)
+ [
-1 P_bat_plus(18) * charging(18)
]
= 0

c_e_P_grid_con(19)_:
+1 P_grid_plus(19)
+1 P_self(19)
-1 P_grid_minus(19)
-1 device0_Pcons(19)
-1 device1_Pcons(19)
+ [
-1 P_bat_plus(19) * charging(19)
]
= 0

c_e_P_grid_con(20)_:
+1 P_grid_plus(20)
+1 P_self(20)
-1 P_grid_minus(20)
-1 device0_Pcons(20)
-1 device1_Pcons(20)
+ [
-1 P_bat_plus(20) * charging(20)
]
= 0

c_e_P_grid_con(21)_:
+1 P_grid_plus(21)
+1 P_self(21)
-1 P_grid_minus(21)
-1 device0_Pcons(21)
-1 device1_Pcons(21)
+ [
-1 P_bat_plus(21) * charging(21)
]
= 0

c_e_P_grid_con(22)_:
+1 P_grid_plus(22)
+1 P_self(22)
-1 P_grid_minus(22)
-1 device0_Pcons(22)
-1 device1_Pcons(22)
+ [
-1 P_bat_plus(22) * charging(22)
]
= 0

c_e_P_grid_con(23)_:
+1 P_grid_plus(23)
+1 P_self(23)
-1 P_grid_minus(23)
-1 device0_Pcons(23)
-1 device1_Pcons(23)
+ [
-1 P_bat_plus(23) * charging(23)
]
= 0

c_e_device0_p_excess_total_l(0)_:
+1 device0_p_excess_l_all(0)
= 0

c_e_device0_p_excess_total_l(1)_:
+1 device0_p_excess_l_all(1)
= 0

c_e_device0_p_excess_total_l(2)_:
+1 device0_p_excess_l_all(2)
= 0

c_e_device0_p_excess_total_l(3)_:
+1 device0_p_excess_l_all(3)
= 0

c_e_device0_p_excess_total_l(4)_:
+1 device0_p_excess_l_all(4)
= 0

c_e_device0_p_excess_total_l(5)_:
+1 device0_p_excess_l_all(5)
= 0

c_e_device0_p_excess_total_l(6)_:
+1 device0_p_excess_l_all(6)
= 0

c_e_device0_p_excess_total_l(7)_:
+1 device0_p_excess_l_all(7)
= 0

c_e_device0_p_excess_total_l(8)_:
+1 device0_p_excess_l_all(8)
= 0

c_e_device0_p_excess_total_l(9)_:
+1 device0_p_excess_l_all(9)
= 0

c_e_device0_p_excess_total_l(10)_:
+1 device0_p_excess_l_all(10)
= 0

c_e_device0_p_excess_total_l(11)_:
+1 device0_p_excess_l_all(11)
= 0

c_e_device0_p_excess_total_l(12)_:
+1 device0_p_excess_l_all(12)
= 0

c_e_device0_p_excess_total_l(13)_:
+1 device0_p_excess_l_all(13)
= 0

c_e_device0_p_excess_total_l(14)_:
+1 device0_p_excess_l_all(14)
= 0

c_e_device0_p_excess_total_l(15)_:
+1 device0_p_excess_l_all(15)
= 0

c_e_device0_p_excess_total_l(16)_:
+1 device0_p_excess_l_all(16)
= 0

c_e_device0_p_excess_total_l(17)_:
+1 device0_p_excess_l_all(17)
= 0

c_e_device0_p_excess_total_l(18)_:
+1 device0_p_excess_l_all(18)
= 0

c_e_device0_p_excess_total_l(19)_:
+1 device0_p_excess_l_all(19)
= 0

c_e_device0_p_excess_total_l(20)_:
+1 device0_p_excess_l_all(20)
= 0

c_e_device0_p_excess_total_l(21)_:
+1 device0_p_excess_l_all(21)
= 0

c_e_device0_p_excess_total_l(22)_:
+1 device0_p_excess_l_all(22)
= 0

c_e_device0_p_excess_total_l(23)_:
+1 device0_p_excess_l_all(23)
= 0

c_e_device0_p_excess_total_u(0)_:
+1 device0_p_excess_u_all(0)
= 0

c_e_device0_p_excess_total_u(1)_:
+1 device0_p_excess_u_all(1)
= 0

c_e_device0_p_excess_total_u(2)_:
+1 device0_p_excess_u_all(2)
= 0

c_e_device0_p_excess_total_u(3)_:
+1 device0_p_excess_u_all(3)
= 0

c_e_device0_p_excess_total_u(4)_:
+1 device0_p_excess_u_all(4)
= 0

c_e_device0_p_excess_total_u(5)_:
+1 device0_p_excess_u_all(5)
= 0

c_e_device0_p_excess_total_u(6)_:
+1 device0_p_excess_u_all(6)
= 0

c_e_device0_p_excess_total_u(7)_:
+1 device0_p_excess_u_all(7)
= 0

c_e_device0_p_excess_total_u(8)_:
+1 device0_p_excess_u_all(8)
= 0

c_e_device0_p_excess_total_u(9)_:
+1 device0_p_excess_u_all(9)
= 0

c_e_device0_p_excess_total_u(10)_:
+1 device0_p_excess_u_all(10)
= 0

c_e_device0_p_excess_total_u(11)_:
+1 device0_p_excess_u_all(11)
= 0

c_e_device0_p_excess_total_u(12)_:
+1 device0_p_excess_u_all(12)
= 0

c_e_device0_p_excess_total_u(13)_:
+1 device0_p_excess_u_all(13)
= 0

c_e_device0_p_excess_total_u(14)_:
+1 device0_p_excess_u_all(14)
= 0

c_e_device0_p_excess_total_u(15)_:
+1 device0_p_excess_u_all(15)
= 0

c_e_device0_p_excess_total_u(16)_:
+1 device0_p_excess_u_all(16)
= 0

c_e_device0_p_excess_total_u(17)_:
+1 device0_p_excess_u_all(17)
= 0

c_e_device0_p_excess_total_u(18)_:
+1 device0_p_excess_u_all(18)
= 0

c_e_device0_p_excess_total_u(19)_:
+1 device0_p_excess_u_all(19)
= 0

c_e_device0_p_excess_total_u(20)_:
+1 device0_p_excess_u_all(20)
= 0

c_e_device0_p_excess_total_u(21)_:
+1 device0_p_excess_u_all(21)
= 0

c_e_device0_p_excess_total_u(22)_:
+1 device0_p_excess_u_all(22)
= 0

c_e_device0_p_excess_total_u(23)_:
+1 device0_p_excess_u_all(23)
= 0

c_e_device0_bin_t_con_0_:
+1 device0_bin_0(0)
+1 device0_bin_0(1)
+1 device0_bin_0(2)
+1 device0_bin_0(3)
+1 device0_bin_0(4)
+1 device0_bin_0(5)
+1 device0_bin_0(6)
+1 device0_bin_0(7)
+1 device0_bin_0(8)
+1 device0_bin_0(9)
+1 device0_bin_0(10)
+1 device0_bin_0(11)
+1 device0_bin_0(12)
+1 device0_bin_0(13)
+1 device0_bin_0(14)
+1 device0_bin_0(15)
+1 device0_bin_0(16)
+1 device0_bin_0(17)
= 1

c_u_device0_starttime_con_plus_0_:
-1 device0_starting_time_plus_0
+1 device0_bin_0(0)
+2 device0_bin_0(1)
+3 device0_bin_0(2)
+4 device0_bin_0(3)
+5 device0_bin_0(4)
+6 device0_bin_0(5)
+7 device0_bin_0(6)
+8 device0_bin_0(7)
+9 device0_bin_0(8)
+10 device0_bin_0(9)
+11 device0_bin_0(10)
+12 device0_bin_0(11)
+13 device0_bin_0(12)
+14 device0_bin_0(13)
+15 device0_bin_0(14)
+16 device0_bin_0(15)
+17 device0_bin_0(16)
+18 device0_bin_0(17)
<= 18

c_u_device0_starttime_con_minus_0_:
-1 device0_starting_time_minus_0
-1 device0_bin_0(0)
-2 device0_bin_0(1)
-3 device0_bin_0(2)
-4 device0_bin_0(3)
-5 device0_bin_0(4)
-6 device0_bin_0(5)
-7 device0_bin_0(6)
-8 device0_bin_0(7)
-9 device0_bin_0(8)
-10 device0_bin_0(9)
-11 device0_bin_0(10)
-12 device0_bin_0(11)
-13 device0_bin_0(12)
-14 device0_bin_0(13)
-15 device0_bin_0(14)
-16 device0_bin_0(15)
-17 device0_bin_0(16)
-18 device0_bin_0(17)
<= -18

c_e_device0_bin_p_con_0(0)_:
+1 device0_Pcons(0)
= 0

c_e_device0_bin_p_con_0(1)_:
+1 device0_Pcons(1)
-3 device0_bin_0(0)
= 0

c_e_device0_bin_p_con_0(2)_:
+1 device0_Pcons(2)
-3 device0_bin_0(0)
-3 device0_bin_0(1)
= 0

c_e_device0_bin_p_con_0(3)_:
+1 device0_Pcons(3)
-3 device0_bin_0(0)
-3 device0_bin_0(1)
-3 device0_bin_0(2)
= 0

c_e_device0_bin_p_con_0(4)_:
+1 device0_Pcons(4)
-3 device0_bin_0(0)
-3 device0_bin_0(1)
-3 device0_bin_0(2)
-3 device0_bin_0(3)
= 0

c_e_device0_bin_p_con_0(5)_:
+1 device0_Pcons(5)
-3 device0_bin_0(0)
-3 device0_bin_0(1)
-3 device0_bin_0(2)
-3 device0_bin_0(3)
-3 device0_bin_0(4)
= 0

c_e_device0_bin_p_con_0(6)_:
+1 device0_Pcons(6)
-3 device0_bin_0(0)
-3 device0_bin_0(1)
-3 device0_bin_0(2)
-3 device0_bin_0(3)
-3 device0_bin_0(4)
-3 device0_bin_0(5)
= 0

c_e_device0_bin_p_con_0(7)_:
+1 device0_Pcons(7)
-3 device0_bin_0(1)
-3 device0_bin_0(2)
-3 device0_bin_0(3)
-3 device0_bin_0(4)
-3 device0_bin_0(5)
-3 device0_bin_0(6)
= 0

c_e_device0_bin_p_con_0(8)_:
+1 device0_Pcons(8)
-3 device0_bin_0(2)
-3 device0_bin_0(3)
-3 device0_bin_0(4)
-3 device0_bin_0(5)
-3 device0_bin_0(6)
-3 device0_bin_0(7)
= 0

c_e_device0_bin_p_con_0(9)_:
+1 device0_Pcons(9)
-3 device0_bin_0(3)
-3 device0_bin_0(4)
-3 device0_bin_0(5)
-3 device0_bin_0(6)
-3 device0_bin_0(7)
-3 device0_bin_0(8)
= 0

c_e_device0_bin_p_con_0(10)_:
+1 device0_Pcons(10)
-3 device0_bin_0(4)
-3 device0_bin_0(5)
-3 device0_bin_0(6)
-3 device0_bin_0(7)
-3 device0_bin_0(8)
-3 device0_bin_0(9)
= 0

c_e_device0_bin_p_con_0(11)_:
+1 device0_Pcons(11)
-3 device0_bin_0(5)
-3 device0_bin_0(6)
-3 device0_bin_0(7)
-3 device0_bin_0(8)
-3 device0_bin_0(9)
-3 device0_bin_0(10)
= 0

c_e_device0_bin_p_con_0(12)_:
+1 device0_Pcons(12)
-3 device0_bin_0(6)
-3 device0_bin_0(7)
-3 device0_bin_0(8)
-3 device0_bin_0(9)
-3 device0_bin_0(10)
-3 device0_bin_0(11)
= 0

c_e_device0_bin_p_con_0(13)_:
+1 device0_Pcons(13)
-3 device0_bin_0(7)
-3 device0_bin_0(8)
-3 device0_bin_0(9)
-3 device0_bin_0(10)
-3 device0_bin_0(11)
-3 device0_bin_0(12)
= 0

c_e_device0_bin_p_con_0(14)_:
+1 device0_Pcons(14)
-3 device0_bin_0(8)
-3 device0_bin_0(9)
-3 device0_bin_0(10)
-3 device0_bin_0(11)
-3 device0_bin_0(12)
-3 device0_bin_0(13)
= 0

c_e_device0_bin_p_con_0(15)_:
+1 device0_Pcons(15)
-3 device0_bin_0(9)
-3 device0_bin_0(10)
-3 device0_bin_0(11)
-3 device0_bin_0(12)
-3 device0_bin_0(13)
-3 device0_bin_0(14)
= 0

c_e_device0_bin_p_con_0(16)_:
+1 device0_Pcons(16)
-3 device0_bin_0(10)
-3 device0_bin_0(11)
-3 device0_bin_0(12)
-3 device0_bin_0(13)
-3 device0_bin_0(14)
-3 device0_bin_0(15)
= 0

c_e_device0_bin_p_con_0(17)_:
+1 device0_Pcons(17)
-3 device0_bin_0(11)
-3 device0_bin_0(12)
-3 device0_bin_0(13)
-3 device0_bin_0(14)
-3 device0_bin_0(15)
-3 device0_bin_0(16)
= 0

c_e_device0_bin_p_con_0(18)_:
+1 device0_Pcons(18)
-3 device0_bin_0(12)
-3 device0_bin_0(13)
-3 device0_bin_0(14)
-3 device0_bin_0(15)
-3 device0_bin_0(16)
-3 device0_bin_0(17)
= 0

c_e_device0_bin_p_con_0(19)_:
+1 device0_Pcons(19)
-3 device0_bin_0(13)
-3 device0_bin_0(14)
-3 device0_bin_0(15)
-3 device0_bin_0(16)
-3 device0_bin_0(17)
= 0

c_e_device0_bin_p_con_0(20)_:
+1 device0_Pcons(20)
-3 device0_bin_0(14)
-3 device0_bin_0(15)
-3 device0_bin_0(16)
-3 device0_bin_0(17)
= 0

c_e_device0_bin_p_con_0(21)_:
+1 device0_Pcons(21)
-3 device0_bin_0(15)
-3 device0_bin_0(16)
-3 device0_bin_0(17)
= 0

c_e_device0_bin_p_con_0(22)_:
+1 device0_Pcons(22)
-3 device0_bin_0(16)
-3 device0_bin_0(17)
= 0

c_e_device0_bin_p_con_0(23)_:
+1 device0_Pcons(23)
-3 device0_bin_0(17)
= 0

c_l_device1_p_con_l(0)_:
+1 device1_allocated_power(0)
>= 8

c_l_device1_p_con_l(1)_:
+1 device1_allocated_power(1)
>= 8

c_l_device1_p_con_l(2)_:
+1 device1_allocated_power(2)
>= 8

c_l_device1_p_con_l(3)_:
+1 device1_allocated_power(3)
>= 8

c_l_device1_p_con_l(4)_:
+1 device1_allocated_power(4)
>= 8

c_l_device1_p_con_l(5)_:
+1 device1_allocated_power(5)
>= 8

c_l_device1_p_con_l(6)_:
+1 device1_allocated_power(6)
>= 8

c_l_device1_p_con_l(7)_:
+1 device1_allocated_power(7)
>= 8

c_l_device1_p_con_l(8)_:
+1 device1_allocated_power(8)
>= 8

c_l_device1_p_con_l(9)_:
+1 device1_allocated_power(9)
>= 8

c_l_device1_p_con_l(10)_:
+1 device1_allocated_power(10)
>= 8

c_l_device1_p_con_l(11)_:
+1 device1_allocated_power(11)
>= 8

c_l_device1_p_con_l(12)_:
+1 device1_allocated_power(12)
>= 8

c_l_device1_p_con_l(13)_:
+1 device1_allocated_power(13)
>= 8

c_l_device1_p_con_l(14)_:
+1 device1_allocated_power(14)
>= 8

c_l_device1_p_con_l(15)_:
+1 device1_allocated_power(15)
>= 8

c_l_device1_p_con_l(16)_:
+1 device1_allocated_power(16)
>= 8

c_l_device1_p_con_l(17)_:
+1 device1_allocated_power(17)
>= 8

c_l_device1_p_con_l(18)_:
+1 device1_allocated_power(18)
>= 8

c_l_device1_p_con_l(19)_:
+1 device1_allocated_power(19)
>= 8

c_l_device1_p_con_l(20)_:
+1 device1_allocated_power(20)
>= 8

c_l_device1_p_con_l(21)_:
+1 device1_allocated_power(21)
>= 8

c_l_device1_p_con_l(22)_:
+1 device1_allocated_power(22)
>= 8

c_l_device1_p_con_l(23)_:
+1 device1_allocated_power(23)
>= 8

c_u_device1_p_con_u(0)_:
+1 device1_allocated_power(0)
<= 9

c_u_device1_p_con_u(1)_:
+1 device1_allocated_power(1)
<= 9

c_u_device1_p_con_u(2)_:
+1 device1_allocated_power(2)
<= 9

c_u_device1_p_con_u(3)_:
+1 device1_allocated_power(3)
<= 9

c_u_device1_p_con_u(4)_:
+1 device1_allocated_power(4)
<= 9

c_u_device1_p_con_u(5)_:
+1 device1_allocated_power(5)
<= 9

c_u_device1_p_con_u(6)_:
+1 device1_allocated_power(6)
<= 9

c_u_device1_p_con_u(7)_:
+1 device1_allocated_power(7)
<= 9

c_u_device1_p_con_u(8)_:
+1 device1_allocated_power(8)
<= 9

c_u_device1_p_con_u(9)_:
+1 device1_allocated_power(9)
<= 9

c_u_device1_p_con_u(10)_:
+1 device1_allocated_power(10)
<= 9

c_u_device1_p_con_u(11)_:
+1 device1_allocated_power(11)
<= 9

c_u_device1_p_con_u(12)_:
+1 device1_allocated_power(12)
<= 9

c_u_device1_p_con_u(13)_:
+1 device1_allocated_power(13)
<= 9

c_u_device1_p_con_u(14)_:
+1 device1_allocated_power(14)
<= 9

c_u_device1_p_con_u(15)_:
+1 device1_allocated_power(15)
<= 9

c_u_device1_p_con_u(16)_:
+1 device1_allocated_power(16)
<= 9

c_u_device1_p_con_u(17)_:
+1 device1_allocated_power(17)
<= 9

c_u_device1_p_con_u(18)_:
+1 device1_allocated_power(18)
<= 9

c_u_device1_p_con_u(19)_:
+1 device1_allocated_power(19)
<= 9

c_u_device1_p_con_u(20)_:
+1 device1_allocated_power(20)
<= 9

c_u_device1_p_con_u(21)_:
+1 device1_allocated_power(21)
<= 9

c_u_device1_p_con_u(22)_:
+1 device1_allocated_power(22)
<= 9

c_u_device1_p_con_u(23)_:
+1 device1_allocated_power(23)
<= 9

c_e_device1_p_excess_total_l(0)_:
+1 device1_p_excess_l_all(0)
= 0

c_e_device1_p_excess_total_l(1)_:
+1 device1_p_excess_l_all(1)
= 0

c_e_device1_p_excess_total_l(2)_:
+1 device1_p_excess_l_all(2)
= 0

c_e_device1_p_excess_total_l(3)_:
+1 device1_p_excess_l_all(3)
= 0

c_e_device1_p_excess_total_l(4)_:
+1 device1_p_excess_l_all(4)
= 0

c_e_device1_p_excess_total_l(5)_:
+1 device1_p_excess_l_all(5)
= 0

c_e_device1_p_excess_total_l(6)_:
+1 device1_p_excess_l_all(6)
= 0

c_e_device1_p_excess_total_l(7)_:
+1 device1_p_excess_l_all(7)
= 0

c_e_device1_p_excess_total_l(8)_:
+1 device1_p_excess_l_all(8)
= 0

c_e_device1_p_excess_total_l(9)_:
+1 device1_p_excess_l_all(9)
= 0

c_e_device1_p_excess_total_l(10)_:
+1 device1_p_excess_l_all(10)
= 0

c_e_device1_p_excess_total_l(11)_:
+1 device1_p_excess_l_all(11)
= 0

c_e_device1_p_excess_total_l(12)_:
+1 device1_p_excess_l_all(12)
= 0

c_e_device1_p_excess_total_l(13)_:
+1 device1_p_excess_l_all(13)
= 0

c_e_device1_p_excess_total_l(14)_:
+1 device1_p_excess_l_all(14)
= 0

c_e_device1_p_excess_total_l(15)_:
+1 device1_p_excess_l_all(15)
= 0

c_e_device1_p_excess_total_l(16)_:
+1 device1_p_excess_l_all(16)
= 0

c_e_device1_p_excess_total_l(17)_:
+1 device1_p_excess_l_all(17)
= 0

c_e_device1_p_excess_total_l(18)_:
+1 device1_p_excess_l_all(18)
= 0

c_e_device1_p_excess_total_l(19)_:
+1 device1_p_excess_l_all(19)
= 0

c_e_device1_p_excess_total_l(20)_:
+1 device1_p_excess_l_all(20)
= 0

c_e_device1_p_excess_total_l(21)_:
+1 device1_p_excess_l_all(21)
= 0

c_e_device1_p_excess_total_l(22)_:
+1 device1_p_excess_l_all(22)
= 0

c_e_device1_p_excess_total_l(23)_:
+1 device1_p_excess_l_all(23)
= 0

c_e_device1_p_excess_total_u(0)_:
+1 device1_p_excess_u_all(0)
= 0

c_e_device1_p_excess_total_u(1)_:
+1 device1_p_excess_u_all(1)
= 0

c_e_device1_p_excess_total_u(2)_:
+1 device1_p_excess_u_all(2)
= 0

c_e_device1_p_excess_total_u(3)_:
+1 device1_p_excess_u_all(3)
= 0

c_e_device1_p_excess_total_u(4)_:
+1 device1_p_excess_u_all(4)
= 0

c_e_device1_p_excess_total_u(5)_:
+1 device1_p_excess_u_all(5)
= 0

c_e_device1_p_excess_total_u(6)_:
+1 device1_p_excess_u_all(6)
= 0

c_e_device1_p_excess_total_u(7)_:
+1 device1_p_excess_u_all(7)
= 0

c_e_device1_p_excess_total_u(8)_:
+1 device1_p_excess_u_all(8)
= 0

c_e_device1_p_excess_total_u(9)_:
+1 device1_p_excess_u_all(9)
= 0

c_e_device1_p_excess_total_u(10)_:
+1 device1_p_excess_u_all(10)
= 0

c_e_device1_p_excess_total_u(11)_:
+1 device1_p_excess_u_all(11)
= 0

c_e_device1_p_excess_total_u(12)_:
+1 device1_p_excess_u_all(12)
= 0

c_e_device1_p_excess_total_u(13)_:
+1 device1_p_excess_u_all(13)
= 0

c_e_device1_p_excess_total_u(14)_:
+1 device1_p_excess_u_all(14)
= 0

c_e_device1_p_excess_total_u(15)_:
+1 device1_p_excess_u_all(15)
= 0

c_e_device1_p_excess_total_u(16)_:
+1 device1_p_excess_u_all(16)
= 0

c_e_device1_p_excess_total_u(17)_:
+1 device1_p_excess_u_all(17)
= 0

c_e_device1_p_excess_total_u(18)_:
+1 device1_p_excess_u_all(18)
= 0

c_e_device1_p_excess_total_u(19)_:
+1 device1_p_excess_u_all(19)
= 0

c_e_device1_p_excess_total_u(20)_:
+1 device1_p_excess_u_all(20)
= 0

c_e_device1_p_excess_total_u(21)_:
+1 device1_p_excess_u_all(21)
= 0

c_e_device1_p_excess_total_u(22)_:
+1 device1_p_excess_u_all(22)
= 0

c_e_device1_p_excess_total_u(23)_:
+1 device1_p_excess_u_all(23)
= 0

c_e_device1_pow_con(0)_:
-1 device1_allocated_power(0)
+1 device1_Pcons(0)
= 0

c_e_device1_pow_con(1)_:
-1 device1_allocated_power(1)
+1 device1_Pcons(1)
= 0

c_e_device1_pow_con(2)_:
-1 device1_allocated_power(2)
+1 device1_Pcons(2)
= 0

c_e_device1_pow_con(3)_:
-1 device1_allocated_power(3)
+1 device1_Pcons(3)
= 0

c_e_device1_pow_con(4)_:
-1 device1_allocated_power(4)
+1 device1_Pcons(4)
= 0

c_e_device1_pow_con(5)_:
-1 device1_allocated_power(5)
+1 device1_Pcons(5)
= 0

c_e_device1_pow_con(6)_:
-1 device1_allocated_power(6)
+1 device1_Pcons(6)
= 0

c_e_device1_pow_con(7)_:
-1 device1_allocated_power(7)
+1 device1_Pcons(7)
= 0

c_e_device1_pow_con(8)_:
-1 device1_allocated_power(8)
+1 device1_Pcons(8)
= 0

c_e_device1_pow_con(9)_:
-1 device1_allocated_power(9)
+1 device1_Pcons(9)
= 0

c_e_device1_pow_con(10)_:
-1 device1_allocated_power(10)
+1 device1_Pcons(10)
= 0

c_e_device1_pow_con(11)_:
-1 device1_allocated_power(11)
+1 device1_Pcons(11)
= 0

c_e_device1_pow_con(12)_:
-1 device1_allocated_power(12)
+1 device1_Pcons(12)
= 0

c_e_device1_pow_con(13)_:
-1 device1_allocated_power(13)
+1 device1_Pcons(13)
= 0

c_e_device1_pow_con(14)_:
-1 device1_allocated_power(14)
+1 device1_Pcons(14)
= 0

c_e_device1_pow_con(15)_:
-1 device1_allocated_power(15)
+1 device1_Pcons(15)
= 0

c_e_device1_pow_con(16)_:
-1 device1_allocated_power(16)
+1 device1_Pcons(16)
= 0

c_e_device1_pow_con(17)_:
-1 device1_allocated_power(17)
+1 device1_Pcons(17)
= 0

c_e_device1_pow_con(18)_:
-1 device1_allocated_power(18)
+1 device1_Pcons(18)
= 0

c_e_device1_pow_con(19)_:
-1 device1_allocated_power(19)
+1 device1_Pcons(19)
= 0

c_e_device1_pow_con(20)_:
-1 device1_allocated_power(20)
+1 device1_Pcons(20)
= 0

c_e_device1_pow_con(21)_:
-1 device1_allocated_power(21)
+1 device1_Pcons(21)
= 0

c_e_device1_pow_con(22)_:
-1 device1_allocated_power(22)
+1 device1_Pcons(22)
= 0

c_e_device1_pow_con(23)_:
-1 device1_allocated_power(23)
+1 device1_Pcons(23)
= 0

c_l_device2_p_con_l(0)_:
+1 device2_allocated_power(0)
>= -5

c_l_device2_p_con_l(1)_:
+1 device2_allocated_power(1)
>= -5

c_l_device2_p_con_l(2)_:
+1 device2_allocated_power(2)
>= -5

c_l_device2_p_con_l(3)_:
+1 device2_allocated_power(3)
>= -5

c_l_device2_p_con_l(4)_:
+1 device2_allocated_power(4)
>= -5

c_l_device2_p_con_l(5)_:
+1 device2_allocated_power(5)
>= -5

c_l_device2_p_con_l(6)_:
+1 device2_allocated_power(6)
>= -5

c_l_device2_p_con_l(7)_:
+1 device2_allocated_power(7)
>= -5

c_l_device2_p_con_l(8)_:
+1 device2_allocated_power(8)
>= -5

c_l_device2_p_con_l(9)_:
+1 device2_allocated_power(9)
>= -5

c_l_device2_p_con_l(10)_:
+1 device2_allocated_power(10)
>= -5

c_l_device2_p_con_l(11)_:
+1 device2_allocated_power(11)
>= -5

c_l_device2_p_con_l(12)_:
+1 device2_allocated_power(12)
>= -5

c_l_device2_p_con_l(13)_:
+1 device2_allocated_power(13)
>= -5

c_l_device2_p_con_l(14)_:
+1 device2_allocated_power(14)
>= -5

c_l_device2_p_con_l(15)_:
+1 device2_allocated_power(15)
>= -5

c_l_device2_p_con_l(16)_:
+1 device2_allocated_power(16)
>= -5

c_l_device2_p_con_l(17)_:
+1 device2_allocated_power(17)
>= -5

c_l_device2_p_con_l(18)_:
+1 device2_allocated_power(18)
>= -5

c_l_device2_p_con_l(19)_:
+1 device2_allocated_power(19)
>= -5

c_l_device2_p_con_l(20)_:
+1 device2_allocated_power(20)
>= -5

c_l_device2_p_con_l(21)_:
+1 device2_allocated_power(21)
>= -5

c_l_device2_p_con_l(22)_:
+1 device2_allocated_power(22)
>= -5

c_l_device2_p_con_l(23)_:
+1 device2_allocated_power(23)
>= -5

c_u_device2_p_con_u(0)_:
+1 device2_allocated_power(0)
<= 5

c_u_device2_p_con_u(1)_:
+1 device2_allocated_power(1)
<= 5

c_u_device2_p_con_u(2)_:
+1 device2_allocated_power(2)
<= 5

c_u_device2_p_con_u(3)_:
+1 device2_allocated_power(3)
<= 5

c_u_device2_p_con_u(4)_:
+1 device2_allocated_power(4)
<= 5

c_u_device2_p_con_u(5)_:
+1 device2_allocated_power(5)
<= 5

c_u_device2_p_con_u(6)_:
+1 device2_allocated_power(6)
<= 5

c_u_device2_p_con_u(7)_:
+1 device2_allocated_power(7)
<= 5

c_u_device2_p_con_u(8)_:
+1 device2_allocated_power(8)
<= 5

c_u_device2_p_con_u(9)_:
+1 device2_allocated_power(9)
<= 5

c_u_device2_p_con_u(10)_:
+1 device2_allocated_power(10)
<= 5

c_u_device2_p_con_u(11)_:
+1 device2_allocated_power(11)
<= 5

c_u_device2_p_con_u(12)_:
+1 device2_allocated_power(12)
<= 5

c_u_device2_p_con_u(13)_:
+1 device2_allocated_power(13)
<= 5

c_u_device2_p_con_u(14)_:
+1 device2_allocated_power(14)
<= 5

c_u_device2_p_con_u(15)_:
+1 device2_allocated_power(15)
<= 5

c_u_device2_p_con_u(16)_:
+1 device2_allocated_power(16)
<= 5

c_u_device2_p_con_u(17)_:
+1 device2_allocated_power(17)
<= 5

c_u_device2_p_con_u(18)_:
+1 device2_allocated_power(18)
<= 5

c_u_device2_p_con_u(19)_:
+1 device2_allocated_power(19)
<= 5

c_u_device2_p_con_u(20)_:
+1 device2_allocated_power(20)
<= 5

c_u_device2_p_con_u(21)_:
+1 device2_allocated_power(21)
<= 5

c_u_device2_p_con_u(22)_:
+1 device2_allocated_power(22)
<= 5

c_u_device2_p_con_u(23)_:
+1 device2_allocated_power(23)
<= 5

c_e_device2_p_excess_total_l(0)_:
+1 device2_p_excess_l_all(0)
= 0

c_e_device2_p_excess_total_l(1)_:
+1 device2_p_excess_l_all(1)
= 0

c_e_device2_p_excess_total_l(2)_:
+1 device2_p_excess_l_all(2)
= 0

c_e_device2_p_excess_total_l(3)_:
+1 device2_p_excess_l_all(3)
= 0

c_e_device2_p_excess_total_l(4)_:
+1 device2_p_excess_l_all(4)
= 0

c_e_device2_p_excess_total_l(5)_:
+1 device2_p_excess_l_all(5)
= 0

c_e_device2_p_excess_total_l(6)_:
+1 device2_p_excess_l_all(6)
= 0

c_e_device2_p_excess_total_l(7)_:
+1 device2_p_excess_l_all(7)
= 0

c_e_device2_p_excess_total_l(8)_:
+1 device2_p_excess_l_all(8)
= 0

c_e_device2_p_excess_total_l(9)_:
+1 device2_p_excess_l_all(9)
= 0

c_e_device2_p_excess_total_l(10)_:
+1 device2_p_excess_l_all(10)
= 0

c_e_device2_p_excess_total_l(11)_:
+1 device2_p_excess_l_all(11)
= 0

c_e_device2_p_excess_total_l(12)_:
+1 device2_p_excess_l_all(12)
= 0

c_e_device2_p_excess_total_l(13)_:
+1 device2_p_excess_l_all(13)
= 0

c_e_device2_p_excess_total_l(14)_:
+1 device2_p_excess_l_all(14)
= 0

c_e_device2_p_excess_total_l(15)_:
+1 device2_p_excess_l_all(15)
= 0

c_e_device2_p_excess_total_l(16)_:
+1 device2_p_excess_l_all(16)
= 0

c_e_device2_p_excess_total_l(17)_:
+1 device2_p_excess_l_all(17)
= 0

c_e_device2_p_excess_total_l(18)_:
+1 device2_p_excess_l_all(18)
= 0

c_e_device2_p_excess_total_l(19)_:
+1 device2_p_excess_l_all(19)
= 0

c_e_device2_p_excess_total_l(20)_:
+1 device2_p_excess_l_all(20)
= 0

c_e_device2_p_excess_total_l(21)_:
+1 device2_p_excess_l_all(21)
= 0

c_e_device2_p_excess_total_l(22)_:
+1 device2_p_excess_l_all(22)
= 0

c_e_device2_p_excess_total_l(23)_:
+1 device2_p_excess_l_all(23)
= 0

c_e_device2_p_excess_total_u(0)_:
+1 device2_p_excess_u_all(0)
= 0

c_e_device2_p_excess_total_u(1)_:
+1 device2_p_excess_u_all(1)
= 0

c_e_device2_p_excess_total_u(2)_:
+1 device2_p_excess_u_all(2)
= 0

c_e_device2_p_excess_total_u(3)_:
+1 device2_p_excess_u_all(3)
= 0

c_e_device2_p_excess_total_u(4)_:
+1 device2_p_excess_u_all(4)
= 0

c_e_device2_p_excess_total_u(5)_:
+1 device2_p_excess_u_all(5)
= 0

c_e_device2_p_excess_total_u(6)_:
+1 device2_p_excess_u_all(6)
= 0

c_e_device2_p_excess_total_u(7)_:
+1 device2_p_excess_u_all(7)
= 0

c_e_device2_p_excess_total_u(8)_:
+1 device2_p_excess_u_all(8)
= 0

c_e_device2_p_excess_total_u(9)_:
+1 device2_p_excess_u_all(9)
= 0

c_e_device2_p_excess_total_u(10)_:
+1 device2_p_excess_u_all(10)
= 0

c_e_device2_p_excess_total_u(11)_:
+1 device2_p_excess_u_all(11)
= 0

c_e_device2_p_excess_total_u(12)_:
+1 device2_p_excess_u_all(12)
= 0

c_e_device2_p_excess_total_u(13)_:
+1 device2_p_excess_u_all(13)
= 0

c_e_device2_p_excess_total_u(14)_:
+1 device2_p_excess_u_all(14)
= 0

c_e_device2_p_excess_total_u(15)_:
+1 device2_p_excess_u_all(15)
= 0

c_e_device2_p_excess_total_u(16)_:
+1 device2_p_excess_u_all(16)
= 0

c_e_device2_p_excess_total_u(17)_:
+1 device2_p_excess_u_all(17)
= 0

c_e_device2_p_excess_total_u(18)_:
+1 device2_p_excess_u_all(18)
= 0

c_e_device2_p_excess_total_u(19)_:
+1 device2_p_excess_u_all(19)
= 0

c_e_device2_p_excess_total_u(20)_:
+1 device2_p_excess_u_all(20)
= 0

c_e_device2_p_excess_total_u(21)_:
+1 device2_p_excess_u_all(21)
= 0

c_e_device2_p_excess_total_u(22)_:
+1 device2_p_excess_u_all(22)
= 0

c_e_device2_p_excess_total_u(23)_:
+1 device2_p_excess_u_all(23)
= 0

c_e_device2_soc_con(0)_:
+1 device2_E(0)
= 30

c_e_device2_soc_con(1)_:
-1 device2_E(0)
+1 device2_E(1)
-0.98 device2_P_plus(1)
+1.0204081632653061 device2_P_minus(1)
= 0

c_e_device2_soc_con(2)_:
-1 device2_E(1)
+1 device2_E(2)
-0.98 device2_P_plus(2)
+1.0204081632653061 device2_P_minus(2)
= 0

c_e_device2_soc_con(3)_:
-1 device2_E(2)
+1 device2_E(3)
-0.98 device2_P_plus(3)
+1.0204081632653061 device2_P_minus(3)
= 0

c_e_device2_soc_con(8)_:
-1 device2_E(7)
+1 device2_E(8)
-0.98 device2_P_plus(8)
+1.0204081632653061 device2_P_minus(8)
= 0

c_e_device2_soc_con(9)_:
-1 device2_E(8)
+1 device2_E(9)
-0.98 device2_P_plus(9)
+1.0204081632653061 device2_P_minus(9)
= 0

c_e_device2_soc_con(10)_:
-1 device2_E(9)
+1 device2_E(10)
-0.98 device2_P_plus(10)
+1.0204081632653061 device2_P_minus(10)
= 0

c_e_device2_soc_con(11)_:
-1 device2_E(10)
+1 device2_E(11)
-0.98 device2_P_plus(11)
+1.0204081632653061 device2_P_minus(11)
= 0

c_e_device2_soc_con(12)_:
-1 device2_E(11)
+1 device2_E(12)
-0.98 device2_P_plus(12)
+1.0204081632653061 device2_P_minus(12)
= 0

c_e_device2_soc_con(13)_:
-1 device2_E(12)
+1 device2_E(13)
-0.98 device2_P_plus(13)
+1.0204081632653061 device2_P_minus(13)
= 0

c_e_device2_soc_con(14)_:
-1 device2_E(13)
+1 device2_E(14)
-0.98 device2_P_plus(14)
+1.0204081632653061 device2_P_minus(14)
= 0

c_e_device2_soc_con(15)_:
-1 device2_E(14)
+1 device2_E(15)
-0.98 device2_P_plus(15)
+1.0204081632653061 device2_P_minus(15)
= 0

c_e_device2_soc_con(16)_:
-1 device2_E(15)
+1 device2_E(16)
-0.98 device2_P_plus(16)
+1.0204081632653061 device2_P_minus(16)
= 0

c_e_device2_soc_con(17)_:
-1 device2_E(16)
+1 device2_E(17)
-0.98 device2_P_plus(17)
+1.0204081632653061 device2_P_minus(17)
= 0

c_e_device2_soc_con(18)_:
-1 device2_E(17)
+1 device2_E(18)
-0.98 device2_P_plus(18)
+1.0204081632653061 device2_P_minus(18)
= 0

c_e_device2_soc_con(19)_:
-1 device2_E(18)
+1 device2_E(19)
-0.98 device2_P_plus(19)
+1.0204081632653061 device2_P_minus(19)
= 0

c_e_device2_soc_con(20)_:
-1 device2_E(19)
+1 device2_E(20)
-0.98 device2_P_plus(20)
+1.0204081632653061 device2_P_minus(20)
= 0

c_e_device2_soc_con(21)_:
-1 device2_E(20)
+1 device2_E(21)
-0.98 device2_P_plus(21)
+1.0204081632653061 device2_P_minus(21)
= 0

c_e_device2_soc_con(22)_:
-1 device2_E(21)
+1 device2_E(22)
-0.98 device2_P_plus(22)
+1.0204081632653061 device2_P_minus(22)
= 0

c_e_device2_soc_con(23)_:
-1 device2_E(22)
+1 device2_E(23)
-0.98 device2_P_plus(23)
+1.0204081632653061 device2_P_minus(23)
= 0

c_e_device2_pow_con(0)_:
+1 device2_allocated_power(0)
= 0

c_e_device2_pow_con(1)_:
+1 device2_allocated_power(1)
-1 device2_P_plus(1)
+1 device2_P_minus(1)
= 0

c_e_device2_pow_con(2)_:
+1 device2_allocated_power(2)
-1 device2_P_plus(2)
+1 device2_P_minus(2)
= 0

c_e_device2_pow_con(3)_:
+1 device2_allocated_power(3)
-1 device2_P_plus(3)
+1 device2_P_minus(3)
= 0

c_e_device2_pow_con(4)_:
+1 device2_allocated_power(4)
-1 device2_P_plus(4)
+1 device2_P_minus(4)
= 0

c_e_device2_pow_con(5)_:
+1 device2_allocated_power(5)
-1 device2_P_plus(5)
+1 device2_P_minus(5)
= 0

c_e_device2_pow_con(6)_:
+1 device2_allocated_power(6)
-1 device2_P_plus(6)
+1 device2_P_minus(6)
= 0

c_e_device2_pow_con(7)_:
+1 device2_allocated_power(7)
-1 device2_P_plus(7)
+1 device2_P_minus(7)
= 0

c_e_device2_pow_con(8)_:
+1 device2_allocated_power(8)
-1 device2_P_plus(8)
+1 device2_P_minus(8)
= 0

c_e_device2_pow_con(9)_:
+1 device2_allocated_power(9)
-1 device2_P_plus(9)
+1 device2_P_minus(9)
= 0

c_e_device2_pow_con(10)_:
+1 device2_allocated_power(10)
-1 device2_P_plus(10)
+1 device2_P_minus(10)
= 0

c_e_device2_pow_con(11)_:
+1 device2_allocated_power(11)
-1 device2_P_plus(11)
+1 device2_P_minus(11)
= 0

c_e_device2_pow_con(12)_:
+1 device2_allocated_power(12)
-1 device2_P_plus(12)
+1 device2_P_minus(12)
= 0

c_e_device2_pow_con(13)_:
+1 device2_allocated_power(13)
-1 device2_P_plus(13)
+1 device2_P_minus(13)
= 0

c_e_device2_pow_con(14)_:
+1 device2_allocated_power(14)
-1 device2_P_plus(14)
+1 device2_P_minus(14)
= 0

c_e_device2_pow_con(15)_:
+1 device2_allocated_power(15)
-1 device2_P_plus(15)
+1 device2_P_minus(15)
= 0

c_e_device2_pow_con(16)_:
+1 device2_allocated_power(16)
-1 device2_P_plus(16)
+1 device2_P_minus(16)
= 0

c_e_device2_pow_con(17)_:
+1 device2_allocated_power(17)
-1 device2_P_plus(17)
+1 device2_P_minus(17)
= 0

c_e_device2_pow_con(18)_:
+1 device2_allocated_power(18)
-1 device2_P_plus(18)
+1 device2_P_minus(18)
= 0

c_e_device2_pow_con(19)_:
+1 device2_allocated_power(19)
-1 device2_P_plus(19)
+1 device2_P_minus(19)
= 0

c_e_device2_pow_con(20)_:
+1 device2_allocated_power(20)
-1 device2_P_plus(20)
+1 device2_P_minus(20)
= 0

c_e_device2_pow_con(21)_:
+1 device2_allocated_power(21)
-1 device2_P_plus(21)
+1 device2_P_minus(21)
= 0

c_e_device2_pow_con(22)_:
+1 device2_allocated_power(22)
-1 device2_P_plus(22)
+1 device2_P_minus(22)
= 0

c_e_device2_pow_con(23)_:
+1 device2_allocated_power(23)
-1 device2_P_plus(23)
+1 device2_P_minus(23)
= 0

c_e_device2_pow_con_home(0)_:
+1 device2_Pcons(0)
-1 device2_allocated_power(0)
= 0

c_e_device2_pow_con_home(1)_:
+1 device2_Pcons(1)
-1 device2_allocated_power(1)
= 0

c_e_device2_pow_con_home(2)_:
+1 device2_Pcons(2)
-1 device2_allocated_power(2)
= 0

c_e_device2_pow_con_home(3)_:
+1 device2_Pcons(3)
-1 device2_allocated_power(3)
= 0

c_e_device2_pow_con_home(8)_:
+1 device2_Pcons(8)
-1 device2_allocated_power(8)
= 0

c_e_device2_pow_con_home(9)_:
+1 device2_Pcons(9)
-1 device2_allocated_power(9)
= 0

c_e_device2_pow_con_home(10)_:
+1 device2_Pcons(10)
-1 device2_allocated_power(10)
= 0

c_e_device2_pow_con_home(11)_:
+1 device2_Pcons(11)
-1 device2_allocated_power(11)
= 0

c_e_device2_pow_con_home(12)_:
+1 device2_Pcons(12)
-1 device2_allocated_power(12)
= 0

c_e_device2_pow_con_home(13)_:
+1 device2_Pcons(13)
-1 device2_allocated_power(13)
= 0

c_e_device2_pow_con_home(14)_:
+1 device2_Pcons(14)
-1 device2_allocated_power(14)
= 0

c_e_device2_pow_con_home(15)_:
+1 device2_Pcons(15)
-1 device2_allocated_power(15)
= 0

c_e_device2_pow_con_home(16)_:
+1 device2_Pcons(16)
-1 device2_allocated_power(16)
= 0

c_e_device2_pow_con_home(17)_:
+1 device2_Pcons(17)
-1 device2_allocated_power(17)
= 0

c_e_device2_pow_con_home(18)_:
+1 device2_Pcons(18)
-1 device2_allocated_power(18)
= 0

c_e_device2_pow_con_home(19)_:
+1 device2_Pcons(19)
-1 device2_allocated_power(19)
= 0

c_e_device2_pow_con_home(20)_:
+1 device2_Pcons(20)
-1 device2_allocated_power(20)
= 0

c_e_device2_pow_con_home(21)_:
+1 device2_Pcons(21)
-1 device2_allocated_power(21)
= 0

c_e_device2_pow_con_home(22)_:
+1 device2_Pcons(22)
-1 device2_allocated_power(22)
= 0

c_e_device2_pow_con_home(23)_:
+1 device2_Pcons(23)
-1 device2_allocated_power(23)
= 0

c_e_device2_pow_con_not_home(4)_:
+1 device2_Pcons(4)
= 0

c_e_device2_pow_con_not_home(5)_:
+1 device2_Pcons(5)
= 0

c_e_device2_pow_con_not_home(6)_:
+1 device2_Pcons(6)
= 0

c_e_device2_pow_con_not_home(7)_:
+1 device2_Pcons(7)
= 0

c_e_device2_start_con(0)_:
+1 device2_E(0)
= 30

c_e_device2_start_con(8)_:
+1 device2_E(8)
= 10

c_e_device2_end_con(3)_:
+1 device2_E(3)
= 40

c_e_device2_end_con(23)_:
+1 device2_E(23)
= 0

bounds
   1 <= ONE_VAR_CONSTANT <= 1
   0 <= P_grid_plus(0) <= +inf
   0 <= P_grid_plus(1) <= +inf
   0 <= P_grid_plus(2) <= +inf
   0 <= P_grid_plus(3) <= +inf
   0 <= P_grid_plus(4) <= +inf
   0 <= P_grid_plus(5) <= +inf
   0 <= P_grid_plus(6) <= +inf
   0 <= P_grid_plus(7) <= +inf
   0 <= P_grid_plus(8) <= +inf
   0 <= P_grid_plus(9) <= +inf
   0 <= P_grid_plus(10) <= +inf
   0 <= P_grid_plus(11) <= +inf
   0 <= P_grid_plus(12) <= +inf
   0 <= P_grid_plus(13) <= +inf
   0 <= P_grid_plus(14) <= +inf
   0 <= P_grid_plus(15) <= +inf
   0 <= P_grid_plus(16) <= +inf
   0 <= P_grid_plus(17) <= +inf
   0 <= P_grid_plus(18) <= +inf
   0 <= P_grid_plus(19) <= +inf
   0 <= P_grid_plus(20) <= +inf
   0 <= P_grid_plus(21) <= +inf
   0 <= P_grid_plus(22) <= +inf
   0 <= P_grid_plus(23) <= +inf
   0 <= P_self(0) <= +inf
   0 <= P_self(1) <= +inf
   0 <= P_self(2) <= +inf
   0 <= P_self(3) <= +inf
   0 <= P_self(4) <= +inf
   0 <= P_self(5) <= +inf
   0 <= P_self(6) <= +inf
   0 <= P_self(7) <= +inf
   0 <= P_self(8) <= +inf
   0 <= P_self(9) <= +inf
   0 <= P_self(10) <= +inf
   0 <= P_self(11) <= +inf
   0 <= P_self(12) <= +inf
   0 <= P_self(13) <= +inf
   0 <= P_self(14) <= +inf
   0 <= P_self(15) <= +inf
   0 <= P_self(16) <= +inf
   0 <= P_self(17) <= +inf
   0 <= P_self(18) <= +inf
   0 <= P_self(19) <= +inf
   0 <= P_self(20) <= +inf
   0 <= P_self(21) <= +inf
   0 <= P_self(22) <= +inf
   0 <= P_self(23) <= +inf
   -inf <= device1_allocated_power(0) <= +inf
   -inf <= device1_allocated_power(1) <= +inf
   -inf <= device1_allocated_power(2) <= +inf
   -inf <= device1_allocated_power(3) <= +inf
   -inf <= device1_allocated_power(4) <= +inf
   -inf <= device1_allocated_power(5) <= +inf
   -inf <= device1_allocated_power(6) <= +inf
   -inf <= device1_allocated_power(7) <= +inf
   -inf <= device1_allocated_power(8) <= +inf
   -inf <= device1_allocated_power(9) <= +inf
   -inf <= device1_allocated_power(10) <= +inf
   -inf <= device1_allocated_power(11) <= +inf
   -inf <= device1_allocated_power(12) <= +inf
   -inf <= device1_allocated_power(13) <= +inf
   -inf <= device1_allocated_power(14) <= +inf
   -inf <= device1_allocated_power(15) <= +inf
   -inf <= device1_allocated_power(16) <= +inf
   -inf <= device1_allocated_power(17) <= +inf
   -inf <= device1_allocated_power(18) <= +inf
   -inf <= device1_allocated_power(19) <= +inf
   -inf <= device1_allocated_power(20) <= +inf
   -inf <= device1_allocated_power(21) <= +inf
   -inf <= device1_allocated_power(22) <= +inf
   -inf <= device1_allocated_power(23) <= +inf
   0 <= device0_starting_time_plus_0 <= +inf
   0 <= device0_starting_time_minus_0 <= +inf
   -inf <= device2_Pcons(0) <= +inf
   -inf <= device2_Pcons(1) <= +inf
   -inf <= device2_Pcons(2) <= +inf
   -inf <= device2_Pcons(3) <= +inf
   -inf <= device2_Pcons(4) <= +inf
   -inf <= device2_Pcons(5) <= +inf
   -inf <= device2_Pcons(6) <= +inf
   -inf <= device2_Pcons(7) <= +inf
   -inf <= device2_Pcons(8) <= +inf
   -inf <= device2_Pcons(9) <= +inf
   -inf <= device2_Pcons(10) <= +inf
   -inf <= device2_Pcons(11) <= +inf
   -inf <= device2_Pcons(12) <= +inf
   -inf <= device2_Pcons(13) <= +inf
   -inf <= device2_Pcons(14) <= +inf
   -inf <= device2_Pcons(15) <= +inf
   -inf <= device2_Pcons(16) <= +inf
   -inf <= device2_Pcons(17) <= +inf
   -inf <= device2_Pcons(18) <= +inf
   -inf <= device2_Pcons(19) <= +inf
   -inf <= device2_Pcons(20) <= +inf
   -inf <= device2_Pcons(21) <= +inf
   -inf <= device2_Pcons(22) <= +inf
   -inf <= device2_Pcons(23) <= +inf
   0 <= P_bat_plus(0) <= +inf
   0 <= P_bat_plus(1) <= +inf
   0 <= P_bat_plus(2) <= +inf
   0 <= P_bat_plus(3) <= +inf
   0 <= P_bat_plus(4) <= +inf
   0 <= P_bat_plus(5) <= +inf
   0 <= P_bat_plus(6) <= +inf
   0 <= P_bat_plus(7) <= +inf
   0 <= P_bat_plus(8) <= +inf
   0 <= P_bat_plus(9) <= +inf
   0 <= P_bat_plus(10) <= +inf
   0 <= P_bat_plus(11) <= +inf
   0 <= P_bat_plus(12) <= +inf
   0 <= P_bat_plus(13) <= +inf
   0 <= P_bat_plus(14) <= +inf
   0 <= P_bat_plus(15) <= +inf
   0 <= P_bat_plus(16) <= +inf
   0 <= P_bat_plus(17) <= +inf
   0 <= P_bat_plus(18) <= +inf
   0 <= P_bat_plus(19) <= +inf
   0 <= P_bat_plus(20) <= +inf
   0 <= P_bat_plus(21) <= +inf
   0 <= P_bat_plus(22) <= +inf
   0 <= P_bat_plus(23) <= +inf
   0 <= charging(0) <= 1
   0 <= charging(1) <= 1
   0 <= charging(2) <= 1
   0 <= charging(3) <= 1
   0 <= charging(4) <= 1
   0 <= charging(5) <= 1
   0 <= charging(6) <= 1
   0 <= charging(7) <= 1
   0 <= charging(8) <= 1
   0 <= charging(9) <= 1
   0 <= charging(10) <= 1
   0 <= charging(11) <= 1
   0 <= charging(12) <= 1
   0 <= charging(13) <= 1
   0 <= charging(14) <= 1
   0 <= charging(15) <= 1
   0 <= charging(16) <= 1
   0 <= charging(17) <= 1
   0 <= charging(18) <= 1
   0 <= charging(19) <= 1
   0 <= charging(20) <= 1
   0 <= charging(21) <= 1
   0 <= charging(22) <= 1
   0 <= charging(23) <= 1
   0 <= P_bat_minus(0) <= +inf
   0 <= P_bat_minus(1) <= +inf
   0 <= P_bat_minus(2) <= +inf
   0 <= P_bat_minus(3) <= +inf
   0 <= P_bat_minus(4) <= +inf
   0 <= P_bat_minus(5) <= +inf
   0 <= P_bat_minus(6) <= +inf
   0 <= P_bat_minus(7) <= +inf
   0 <= P_bat_minus(8) <= +inf
   0 <= P_bat_minus(9) <= +inf
   0 <= P_bat_minus(10) <= +inf
   0 <= P_bat_minus(11) <= +inf
   0 <= P_bat_minus(12) <= +inf
   0 <= P_bat_minus(13) <= +inf
   0 <= P_bat_minus(14) <= +inf
   0 <= P_bat_minus(15) <= +inf
   0 <= P_bat_minus(16) <= +inf
   0 <= P_bat_minus(17) <= +inf
   0 <= P_bat_minus(18) <= +inf
   0 <= P_bat_minus(19) <= +inf
   0 <= P_bat_minus(20) <= +inf
   0 <= P_bat_minus(21) <= +inf
   0 <= P_bat_minus(22) <= +inf
   0 <= P_bat_minus(23) <= +inf
   0 <= P_grid_minus(0) <= +inf
   0 <= P_grid_minus(1) <= +inf
   0 <= P_grid_minus(2) <= +inf
   0 <= P_grid_minus(3) <= +inf
   0 <= P_grid_minus(4) <= +inf
   0 <= P_grid_minus(5) <= +inf
   0 <= P_grid_minus(6) <= +inf
   0 <= P_grid_minus(7) <= +inf
   0 <= P_grid_minus(8) <= +inf
   0 <= P_grid_minus(9) <= +inf
   0 <= P_grid_minus(10) <= +inf
   0 <= P_grid_minus(11) <= +inf
   0 <= P_grid_minus(12) <= +inf
   0 <= P_grid_minus(13) <= +inf
   0 <= P_grid_minus(14) <= +inf
   0 <= P_grid_minus(15) <= +inf
   0 <= P_grid_minus(16) <= +inf
   0 <= P_grid_minus(17) <= +inf
   0 <= P_grid_minus(18) <= +inf
   0 <= P_grid_minus(19) <= +inf
   0 <= P_grid_minus(20) <= +inf
   0 <= P_grid_minus(21) <= +inf
   0 <= P_grid_minus(22) <= +inf
   0 <= P_grid_minus(23) <= +inf
   -inf <= device0_Pcons(0) <= +inf
   -inf <= device0_Pcons(1) <= +inf
   -inf <= device0_Pcons(2) <= +inf
   -inf <= device0_Pcons(3) <= +inf
   -inf <= device0_Pcons(4) <= +inf
   -inf <= device0_Pcons(5) <= +inf
   -inf <= device0_Pcons(6) <= +inf
   -inf <= device0_Pcons(7) <= +inf
   -inf <= device0_Pcons(8) <= +inf
   -inf <= device0_Pcons(9) <= +inf
   -inf <= device0_Pcons(10) <= +inf
   -inf <= device0_Pcons(11) <= +inf
   -inf <= device0_Pcons(12) <= +inf
   -inf <= device0_Pcons(13) <= +inf
   -inf <= device0_Pcons(14) <= +inf
   -inf <= device0_Pcons(15) <= +inf
   -inf <= device0_Pcons(16) <= +inf
   -inf <= device0_Pcons(17) <= +inf
   -inf <= device0_Pcons(18) <= +inf
   -inf <= device0_Pcons(19) <= +inf
   -inf <= device0_Pcons(20) <= +inf
   -inf <= device0_Pcons(21) <= +inf
   -inf <= device0_Pcons(22) <= +inf
   -inf <= device0_Pcons(23) <= +inf
   -inf <= device1_Pcons(0) <= +inf
   -inf <= device1_Pcons(1) <= +inf
   -inf <= device1_Pcons(2) <= +inf
   -inf <= device1_Pcons(3) <= +inf
   -inf <= device1_Pcons(4) <= +inf
   -inf <= device1_Pcons(5) <= +inf
   -inf <= device1_Pcons(6) <= +inf
   -inf <= device1_Pcons(7) <= +inf
   -inf <= device1_Pcons(8) <= +inf
   -inf <= device1_Pcons(9) <= +inf
   -inf <= device1_Pcons(10) <= +inf
   -inf <= device1_Pcons(11) <= +inf
   -inf <= device1_Pcons(12) <= +inf
   -inf <= device1_Pcons(13) <= +inf
   -inf <= device1_Pcons(14) <= +inf
   -inf <= device1_Pcons(15) <= +inf
   -inf <= device1_Pcons(16) <= +inf
   -inf <= device1_Pcons(17) <= +inf
   -inf <= device1_Pcons(18) <= +inf
   -inf <= device1_Pcons(19) <= +inf
   -inf <= device1_Pcons(20) <= +inf
   -inf <= device1_Pcons(21) <= +inf
   -inf <= device1_Pcons(22) <= +inf
   -inf <= device1_Pcons(23) <= +inf
   0 <= device0_p_excess_l_all(0) <= +inf
   0 <= device0_p_excess_l_all(1) <= +inf
   0 <= device0_p_excess_l_all(2) <= +inf
   0 <= device0_p_excess_l_all(3) <= +inf
   0 <= device0_p_excess_l_all(4) <= +inf
   0 <= device0_p_excess_l_all(5) <= +inf
   0 <= device0_p_excess_l_all(6) <= +inf
   0 <= device0_p_excess_l_all(7) <= +inf
   0 <= device0_p_excess_l_all(8) <= +inf
   0 <= device0_p_excess_l_all(9) <= +inf
   0 <= device0_p_excess_l_all(10) <= +inf
   0 <= device0_p_excess_l_all(11) <= +inf
   0 <= device0_p_excess_l_all(12) <= +inf
   0 <= device0_p_excess_l_all(13) <= +inf
   0 <= device0_p_excess_l_all(14) <= +inf
   0 <= device0_p_excess_l_all(15) <= +inf
   0 <= device0_p_excess_l_all(16) <= +inf
   0 <= device0_p_excess_l_all(17) <= +inf
   0 <= device0_p_excess_l_all(18) <= +inf
   0 <= device0_p_excess_l_all(19) <= +inf
   0 <= device0_p_excess_l_all(20) <= +inf
   0 <= device0_p_excess_l_all(21) <= +inf
   0 <= device0_p_excess_l_all(22) <= +inf
   0 <= device0_p_excess_l_all(23) <= +inf
   0 <= device0_p_excess_u_all(0) <= +inf
   0 <= device0_p_excess_u_all(1) <= +inf
   0 <= device0_p_excess_u_all(2) <= +inf
   0 <= device0_p_excess_u_all(3) <= +inf
   0 <= device0_p_excess_u_all(4) <= +inf
   0 <= device0_p_excess_u_all(5) <= +inf
   0 <= device0_p_excess_u_all(6) <= +inf
   0 <= device0_p_excess_u_all(7) <= +inf
   0 <= device0_p_excess_u_all(8) <= +inf
   0 <= device0_p_excess_u_all(9) <= +inf
   0 <= device0_p_excess_u_all(10) <= +inf
   0 <= device0_p_excess_u_all(11) <= +inf
   0 <= device0_p_excess_u_all(12) <= +inf
   0 <= device0_p_excess_u_all(13) <= +inf
   0 <= device0_p_excess_u_all(14) <= +inf
   0 <= device0_p_excess_u_all(15) <= +inf
   0 <= device0_p_excess_u_all(16) <= +inf
   0 <= device0_p_excess_u_all(17) <= +inf
   0 <= device0_p_excess_u_all(18) <= +inf
   0 <= device0_p_excess_u_all(19) <= +inf
   0 <= device0_p_excess_u_all(20) <= +inf
   0 <= device0_p_excess_u_all(21) <= +inf
   0 <= device0_p_excess_u_all(22) <= +inf
   0 <= device0_p_excess_u_all(23) <= +inf
   0 <= device0_bin_0(0) <= 1
   0 <= device0_bin_0(1) <= 1
   0 <= device0_bin_0(2) <= 1
   0 <= device0_bin_0(3) <= 1
   0 <= device0_bin_0(4) <= 1
   0 <= device0_bin_0(5) <= 1
   0 <= device0_bin_0(6) <= 1
   0 <= device0_bin_0(7) <= 1
   0 <= device0_bin_0(8) <= 1
   0 <= device0_bin_0(9) <= 1
   0 <= device0_bin_0(10) <= 1
   0 <= device0_bin_0(11) <= 1
   0 <= device0_bin_0(12) <= 1
   0 <= device0_bin_0(13) <= 1
   0 <= device0_bin_0(14) <= 1
   0 <= device0_bin_0(15) <= 1
   0 <= device0_bin_0(16) <= 1
   0 <= device0_bin_0(17) <= 1
   0 <= device1_p_excess_l_all(0) <= +inf
   0 <= device1_p_excess_l_all(1) <= +inf
   0 <= device1_p_excess_l_all(2) <= +inf
   0 <= device1_p_excess_l_all(3) <= +inf
   0 <= device1_p_excess_l_all(4) <= +inf
   0 <= device1_p_excess_l_all(5) <= +inf
   0 <= device1_p_excess_l_all(6) <= +inf
   0 <= device1_p_excess_l_all(7) <= +inf
   0 <= device1_p_excess_l_all(8) <= +inf
   0 <= device1_p_excess_l_all(9) <= +inf
   0 <= device1_p_excess_l_all(10) <= +inf
   0 <= device1_p_excess_l_all(11) <= +inf
   0 <= device1_p_excess_l_all(12) <= +inf
   0 <= device1_p_excess_l_all(13) <= +inf
   0 <= device1_p_excess_l_all(14) <= +inf
   0 <= device1_p_excess_l_all(15) <= +inf
   0 <= device1_p_excess_l_all(16) <= +inf
   0 <= device1_p_excess_l_all(17) <= +inf
   0 <= device1_p_excess_l_all(18) <= +inf
   0 <= device1_p_excess_l_all(19) <= +inf
   0 <= device1_p_excess_l_all(20) <= +inf
   0 <= device1_p_excess_l_all(21) <= +inf
   0 <= device1_p_excess_l_all(22) <= +inf
   0 <= device1_p_excess_l_all(23) <= +inf
   0 <= device1_p_excess_u_all(0) <= +inf
   0 <= device1_p_excess_u_all(1) <= +inf
   0 <= device1_p_excess_u_all(2) <= +inf
   0 <= device1_p_excess_u_all(3) <= +inf
   0 <= device1_p_excess_u_all(4) <= +inf
   0 <= device1_p_excess_u_all(5) <= +inf
   0 <= device1_p_excess_u_all(6) <= +inf
   0 <= device1_p_excess_u_all(7) <= +inf
   0 <= device1_p_excess_u_all(8) <= +inf
   0 <= device1_p_excess_u_all(9) <= +inf
   0 <= device1_p_excess_u_all(10) <= +inf
   0 <= device1_p_excess_u_all(11) <= +inf
   0 <= device1_p_excess_u_all(12) <= +inf
   0 <= device1_p_excess_u_all(13) <= +inf
   0 <= device1_p_excess_u_all(14) <= +inf
   0 <= device1_p_excess_u_all(15) <= +inf
   0 <= device1_p_excess_u_all(16) <= +inf
   0 <= device1_p_excess_u_all(17) <= +inf
   0 <= device1_p_excess_u_all(18) <= +inf
   0 <= device1_p_excess_u_all(19) <= +inf
   0 <= device1_p_excess_u_all(20) <= +inf
   0 <= device1_p_excess_u_all(21) <= +inf
   0 <= device1_p_excess_u_all(22) <= +inf
   0 <= device1_p_excess_u_all(23) <= +inf
   -inf <= device2_allocated_power(0) <= +inf
   -inf <= device2_allocated_power(1) <= +inf
   -inf <= device2_allocated_power(2) <= +inf
   -inf <= device2_allocated_power(3) <= +inf
   -inf <= device2_allocated_power(4) <= +inf
   -inf <= device2_allocated_power(5) <= +inf
   -inf <= device2_allocated_power(6) <= +inf
   -inf <= device2_allocated_power(7) <= +inf
   -inf <= device2_allocated_power(8) <= +inf
   -inf <= device2_allocated_power(9) <= +inf
   -inf <= device2_allocated_power(10) <= +inf
   -inf <= device2_allocated_power(11) <= +inf
   -inf <= device2_allocated_power(12) <= +inf
   -inf <= device2_allocated_power(13) <= +inf
   -inf <= device2_allocated_power(14) <= +inf
   -inf <= device2_allocated_power(15) <= +inf
   -inf <= device2_allocated_power(16) <= +inf
   -inf <= device2_allocated_power(17) <= +inf
   -inf <= device2_allocated_power(18) <= +inf
   -inf <= device2_allocated_power(19) <= +inf
   -inf <= device2_allocated_power(20) <= +inf
   -inf <= device2_allocated_power(21) <= +inf
   -inf <= device2_allocated_power(22) <= +inf
   -inf <= device2_allocated_power(23) <= +inf
   0 <= device2_p_excess_l_all(0) <= +inf
   0 <= device2_p_excess_l_all(1) <= +inf
   0 <= device2_p_excess_l_all(2) <= +inf
   0 <= device2_p_excess_l_all(3) <= +inf
   0 <= device2_p_excess_l_all(4) <= +inf
   0 <= device2_p_excess_l_all(5) <= +inf
   0 <= device2_p_excess_l_all(6) <= +inf
   0 <= device2_p_excess_l_all(7) <= +inf
   0 <= device2_p_excess_l_all(8) <= +inf
   0 <= device2_p_excess_l_all(9) <= +inf
   0 <= device2_p_excess_l_all(10) <= +inf
   0 <= device2_p_excess_l_all(11) <= +inf
   0 <= device2_p_excess_l_all(12) <= +inf
   0 <= device2_p_excess_l_all(13) <= +inf
   0 <= device2_p_excess_l_all(14) <= +inf
   0 <= device2_p_excess_l_all(15) <= +inf
   0 <= device2_p_excess_l_all(16) <= +inf
   0 <= device2_p_excess_l_all(17) <= +inf
   0 <= device2_p_excess_l_all(18) <= +inf
   0 <= device2_p_excess_l_all(19) <= +inf
   0 <= device2_p_excess_l_all(20) <= +inf
   0 <= device2_p_excess_l_all(21) <= +inf
   0 <= device2_p_excess_l_all(22) <= +inf
   0 <= device2_p_excess_l_all(23) <= +inf
   0 <= device2_p_excess_u_all(0) <= +inf
   0 <= device2_p_excess_u_all(1) <= +inf
   0 <= device2_p_excess_u_all(2) <= +inf
   0 <= device2_p_excess_u_all(3) <= +inf
   0 <= device2_p_excess_u_all(4) <= +inf
   0 <= device2_p_excess_u_all(5) <= +inf
   0 <= device2_p_excess_u_all(6) <= +inf
   0 <= device2_p_excess_u_all(7) <= +inf
   0 <= device2_p_excess_u_all(8) <= +inf
   0 <= device2_p_excess_u_all(9) <= +inf
   0 <= device2_p_excess_u_all(10) <= +inf
   0 <= device2_p_excess_u_all(11) <= +inf
   0 <= device2_p_excess_u_all(12) <= +inf
   0 <= device2_p_excess_u_all(13) <= +inf
   0 <= device2_p_excess_u_all(14) <= +inf
   0 <= device2_p_excess_u_all(15) <= +inf
   0 <= device2_p_excess_u_all(16) <= +inf
   0 <= device2_p_excess_u_all(17) <= +inf
   0 <= device2_p_excess_u_all(18) <= +inf
   0 <= device2_p_excess_u_all(19) <= +inf
   0 <= device2_p_excess_u_all(20) <= +inf
   0 <= device2_p_excess_u_all(21) <= +inf
   0 <= device2_p_excess_u_all(22) <= +inf
   0 <= device2_p_excess_u_all(23) <= +inf
   0 <= device2_E(0) <= 60
   0 <= device2_E(1) <= 60
   0 <= device2_E(2) <= 60
   0 <= device2_E(3) <= 60
   0 <= device2_E(7) <= 60
   0 <= device2_E(8) <= 60
   0 <= device2_E(9) <= 60
   0 <= device2_E(10) <= 60
   0 <= device2_E(11) <= 60
   0 <= device2_E(12) <= 60
   0 <= device2_E(13) <= 60
   0 <= device2_E(14) <= 60
   0 <= device2_E(15) <= 60
   0 <= device2_E(16) <= 60
   0 <= device2_E(17) <= 60
   0 <= device2_E(18) <= 60
   0 <= device2_E(19) <= 60
   0 <= device2_E(20) <= 60
   0 <= device2_E(21) <= 60
   0 <= device2_E(22) <= 60
   0 <= device2_E(23) <= 60
   0 <= device2_P_plus(1) <= 5
   0 <= device2_P_plus(2) <= 5
   0 <= device2_P_plus(3) <= 5
   0 <= device2_P_plus(4) <= 5
   0 <= device2_P_plus(5) <= 5
   0 <= device2_P_plus(6) <= 5
   0 <= device2_P_plus(7) <= 5
   0 <= device2_P_plus(8) <= 5
   0 <= device2_P_plus(9) <= 5
   0 <= device2_P_plus(10) <= 5
   0 <= device2_P_plus(11) <= 5
   0 <= device2_P_plus(12) <= 5
   0 <= device2_P_plus(13) <= 5
   0 <= device2_P_plus(14) <= 5
   0 <= device2_P_plus(15) <= 5
   0 <= device2_P_plus(16) <= 5
   0 <= device2_P_plus(17) <= 5
   0 <= device2_P_plus(18) <= 5
   0 <= device2_P_plus(19) <= 5
   0 <= device2_P_plus(20) <= 5
   0 <= device2_P_plus(21) <= 5
   0 <= device2_P_plus(22) <= 5
   0 <= device2_P_plus(23) <= 5
   0 <= device2_P_minus(1) <= 5
   0 <= device2_P_minus(2) <= 5
   0 <= device2_P_minus(3) <= 5
   0 <= device2_P_minus(4) <= 5
   0 <= device2_P_minus(5) <= 5
   0 <= device2_P_minus(6) <= 5
   0 <= device2_P_minus(7) <= 5
   0 <= device2_P_minus(8) <= 5
   0 <= device2_P_minus(9) <= 5
   0 <= device2_P_minus(10) <= 5
   0 <= device2_P_minus(11) <= 5
   0 <= device2_P_minus(12) <= 5
   0 <= device2_P_minus(13) <= 5
   0 <= device2_P_minus(14) <= 5
   0 <= device2_P_minus(15) <= 5
   0 <= device2_P_minus(16) <= 5
   0 <= device2_P_minus(17) <= 5
   0 <= device2_P_minus(18) <= 5
   0 <= device2_P_minus(19) <= 5
   0 <= device2_P_minus(20) <= 5
   0 <= device2_P_minus(21) <= 5
   0 <= device2_P_minus(22) <= 5
   0 <= device2_P_minus(23) <= 5
binary
  charging(0)
  charging(1)
  charging(2)
  charging(3)
  charging(4)
  charging(5)
  charging(6)
  charging(7)
  charging(8)
  charging(9)
  charging(10)
  charging(11)
  charging(12)
  charging(13)
  charging(14)
  charging(15)
  charging(16)
  charging(17)
  charging(18)
  charging(19)
  charging(20)
  charging(21)
  charging(22)
  charging(23)
  device0_bin_0(0)
  device0_bin_0(1)
  device0_bin_0(2)
  device0_bin_0(3)
  device0_bin_0(4)
  device0_bin_0(5)
  device0_bin_0(6)
  device0_bin_0(7)
  device0_bin_0(8)
  device0_bin_0(9)
  device0_bin_0(10)
  device0_bin_0(11)
  device0_bin_0(12)
  device0_bin_0(13)
  device0_bin_0(14)
  device0_bin_0(15)
  device0_bin_0(16)
  device0_bin_0(17)
end
