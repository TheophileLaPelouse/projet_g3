\* Source Pyomo model name=unknown *\

min 
obj:
+4832.271666991404 ONE_VAR_CONSTANT
+2 P_grid_plus(0)
+2 P_grid_plus(1)
+2 P_grid_plus(2)
+2 P_grid_plus(3)
+2 P_grid_plus(4)
+2 P_grid_plus(5)
+2 P_grid_plus(6)
+2 P_grid_plus(7)
+2 P_grid_plus(8)
+2 P_grid_plus(9)
+2 P_grid_plus(10)
+2 P_grid_plus(11)
+2 P_grid_plus(12)
+2 P_grid_plus(13)
+2 P_grid_plus(14)
+2 P_grid_plus(15)
+2 P_grid_plus(16)
+2 P_grid_plus(17)
+2 P_grid_plus(18)
+2 P_grid_plus(19)
+2 P_grid_plus(20)
+2 P_grid_plus(21)
+2 P_grid_plus(22)
+2 P_grid_plus(23)
-0.25 P_grid_minus(0)
-0.25 P_grid_minus(1)
-0.25 P_grid_minus(2)
-0.25 P_grid_minus(3)
-0.25 P_grid_minus(4)
-0.25 P_grid_minus(5)
-0.25 P_grid_minus(6)
-0.25 P_grid_minus(7)
-0.25 P_grid_minus(8)
-0.25 P_grid_minus(9)
-0.25 P_grid_minus(10)
-0.25 P_grid_minus(11)
-0.25 P_grid_minus(12)
-0.25 P_grid_minus(13)
-0.25 P_grid_minus(14)
-0.25 P_grid_minus(15)
-0.25 P_grid_minus(16)
-0.25 P_grid_minus(17)
-0.25 P_grid_minus(18)
-0.25 P_grid_minus(19)
-0.25 P_grid_minus(20)
-0.25 P_grid_minus(21)
-0.25 P_grid_minus(22)
-0.25 P_grid_minus(23)
+0.5 P_self(0)
+0.5 P_self(1)
+0.5 P_self(2)
+0.5 P_self(3)
+0.5 P_self(4)
+0.5 P_self(5)
+0.5 P_self(6)
+0.5 P_self(7)
+0.5 P_self(8)
+0.5 P_self(9)
+0.5 P_self(10)
+0.5 P_self(11)
+0.5 P_self(12)
+0.5 P_self(13)
+0.5 P_self(14)
+0.5 P_self(15)
+0.5 P_self(16)
+0.5 P_self(17)
+0.5 P_self(18)
+0.5 P_self(19)
+0.5 P_self(20)
+0.5 P_self(21)
+0.5 P_self(22)
+0.5 P_self(23)

s.t.

c_e_P_prod_con(0)_:
+1 P_self(0)
+1 device10_Pcons(0)
= 0

c_e_P_prod_con(1)_:
+1 P_self(1)
+1 device10_Pcons(1)
= 0

c_e_P_prod_con(2)_:
+1 P_self(2)
+1 device10_Pcons(2)
= 0

c_e_P_prod_con(3)_:
+1 P_self(3)
+1 device10_Pcons(3)
= 0

c_e_P_prod_con(4)_:
+1 P_self(4)
+1 device10_Pcons(4)
= 0

c_e_P_prod_con(5)_:
+1 P_self(5)
+1 device10_Pcons(5)
= 0

c_e_P_prod_con(6)_:
+1 P_self(6)
+1 device10_Pcons(6)
= 0

c_e_P_prod_con(7)_:
+1 P_self(7)
+1 device10_Pcons(7)
= 0

c_e_P_prod_con(8)_:
+1 P_self(8)
+1 device10_Pcons(8)
= 0

c_e_P_prod_con(9)_:
+1 P_self(9)
+1 device10_Pcons(9)
= 0

c_e_P_prod_con(10)_:
+1 P_self(10)
+1 device10_Pcons(10)
= 0

c_e_P_prod_con(11)_:
+1 P_self(11)
+1 device10_Pcons(11)
= 0

c_e_P_prod_con(12)_:
+1 P_self(12)
+1 device10_Pcons(12)
= 0

c_e_P_prod_con(13)_:
+1 P_self(13)
+1 device10_Pcons(13)
= 0

c_e_P_prod_con(14)_:
+1 P_self(14)
+1 device10_Pcons(14)
= 0

c_e_P_prod_con(15)_:
+1 P_self(15)
+1 device10_Pcons(15)
= 0

c_e_P_prod_con(16)_:
+1 P_self(16)
+1 device10_Pcons(16)
= 0

c_e_P_prod_con(17)_:
+1 P_self(17)
+1 device10_Pcons(17)
= 0

c_e_P_prod_con(18)_:
+1 P_self(18)
+1 device10_Pcons(18)
= 0

c_e_P_prod_con(19)_:
+1 P_self(19)
+1 device10_Pcons(19)
= 0

c_e_P_prod_con(20)_:
+1 P_self(20)
+1 device10_Pcons(20)
= 0

c_e_P_prod_con(21)_:
+1 P_self(21)
+1 device10_Pcons(21)
= 0

c_e_P_prod_con(22)_:
+1 P_self(22)
+1 device10_Pcons(22)
= 0

c_e_P_prod_con(23)_:
+1 P_self(23)
+1 device10_Pcons(23)
= 0

c_e_P_grid_con(0)_:
+1 P_grid_plus(0)
-1 P_grid_minus(0)
+1 P_self(0)
-1 device0_Pcons(0)
-1 device1_Pcons(0)
-1 device2_Pcons(0)
-1 device3_Pcons(0)
-1 device4_Pcons(0)
-1 device5_Pcons(0)
-1 device6_Pcons(0)
-1 device7_Pcons(0)
-1 device8_Pcons(0)
= 0

c_e_P_grid_con(1)_:
+1 P_grid_plus(1)
-1 P_grid_minus(1)
+1 P_self(1)
-1 device0_Pcons(1)
-1 device1_Pcons(1)
-1 device2_Pcons(1)
-1 device3_Pcons(1)
-1 device4_Pcons(1)
-1 device5_Pcons(1)
-1 device6_Pcons(1)
-1 device7_Pcons(1)
-1 device8_Pcons(1)
= 0

c_e_P_grid_con(2)_:
+1 P_grid_plus(2)
-1 P_grid_minus(2)
+1 P_self(2)
-1 device0_Pcons(2)
-1 device1_Pcons(2)
-1 device2_Pcons(2)
-1 device3_Pcons(2)
-1 device4_Pcons(2)
-1 device5_Pcons(2)
-1 device6_Pcons(2)
-1 device7_Pcons(2)
-1 device8_Pcons(2)
= 0

c_e_P_grid_con(3)_:
+1 P_grid_plus(3)
-1 P_grid_minus(3)
+1 P_self(3)
-1 device0_Pcons(3)
-1 device1_Pcons(3)
-1 device2_Pcons(3)
-1 device3_Pcons(3)
-1 device4_Pcons(3)
-1 device5_Pcons(3)
-1 device6_Pcons(3)
-1 device7_Pcons(3)
-1 device8_Pcons(3)
= 0

c_e_P_grid_con(4)_:
+1 P_grid_plus(4)
-1 P_grid_minus(4)
+1 P_self(4)
-1 device0_Pcons(4)
-1 device1_Pcons(4)
-1 device2_Pcons(4)
-1 device3_Pcons(4)
-1 device4_Pcons(4)
-1 device5_Pcons(4)
-1 device6_Pcons(4)
-1 device7_Pcons(4)
-1 device8_Pcons(4)
= 0

c_e_P_grid_con(5)_:
+1 P_grid_plus(5)
-1 P_grid_minus(5)
+1 P_self(5)
-1 device0_Pcons(5)
-1 device1_Pcons(5)
-1 device2_Pcons(5)
-1 device3_Pcons(5)
-1 device4_Pcons(5)
-1 device5_Pcons(5)
-1 device6_Pcons(5)
-1 device7_Pcons(5)
-1 device8_Pcons(5)
= 0

c_e_P_grid_con(6)_:
+1 P_grid_plus(6)
-1 P_grid_minus(6)
+1 P_self(6)
-1 device0_Pcons(6)
-1 device1_Pcons(6)
-1 device2_Pcons(6)
-1 device3_Pcons(6)
-1 device4_Pcons(6)
-1 device5_Pcons(6)
-1 device6_Pcons(6)
-1 device7_Pcons(6)
-1 device8_Pcons(6)
= 0

c_e_P_grid_con(7)_:
+1 P_grid_plus(7)
-1 P_grid_minus(7)
+1 P_self(7)
-1 device0_Pcons(7)
-1 device1_Pcons(7)
-1 device2_Pcons(7)
-1 device3_Pcons(7)
-1 device4_Pcons(7)
-1 device5_Pcons(7)
-1 device6_Pcons(7)
-1 device7_Pcons(7)
-1 device8_Pcons(7)
= 0

c_e_P_grid_con(8)_:
+1 P_grid_plus(8)
-1 P_grid_minus(8)
+1 P_self(8)
-1 device0_Pcons(8)
-1 device1_Pcons(8)
-1 device2_Pcons(8)
-1 device3_Pcons(8)
-1 device4_Pcons(8)
-1 device5_Pcons(8)
-1 device6_Pcons(8)
-1 device7_Pcons(8)
-1 device8_Pcons(8)
= 0

c_e_P_grid_con(9)_:
+1 P_grid_plus(9)
-1 P_grid_minus(9)
+1 P_self(9)
-1 device0_Pcons(9)
-1 device1_Pcons(9)
-1 device2_Pcons(9)
-1 device3_Pcons(9)
-1 device4_Pcons(9)
-1 device5_Pcons(9)
-1 device6_Pcons(9)
-1 device7_Pcons(9)
-1 device8_Pcons(9)
= 0

c_e_P_grid_con(10)_:
+1 P_grid_plus(10)
-1 P_grid_minus(10)
+1 P_self(10)
-1 device0_Pcons(10)
-1 device1_Pcons(10)
-1 device2_Pcons(10)
-1 device3_Pcons(10)
-1 device4_Pcons(10)
-1 device5_Pcons(10)
-1 device6_Pcons(10)
-1 device7_Pcons(10)
-1 device8_Pcons(10)
= 0

c_e_P_grid_con(11)_:
+1 P_grid_plus(11)
-1 P_grid_minus(11)
+1 P_self(11)
-1 device0_Pcons(11)
-1 device1_Pcons(11)
-1 device2_Pcons(11)
-1 device3_Pcons(11)
-1 device4_Pcons(11)
-1 device5_Pcons(11)
-1 device6_Pcons(11)
-1 device7_Pcons(11)
-1 device8_Pcons(11)
= 0

c_e_P_grid_con(12)_:
+1 P_grid_plus(12)
-1 P_grid_minus(12)
+1 P_self(12)
-1 device0_Pcons(12)
-1 device1_Pcons(12)
-1 device2_Pcons(12)
-1 device3_Pcons(12)
-1 device4_Pcons(12)
-1 device5_Pcons(12)
-1 device6_Pcons(12)
-1 device7_Pcons(12)
-1 device8_Pcons(12)
= 0

c_e_P_grid_con(13)_:
+1 P_grid_plus(13)
-1 P_grid_minus(13)
+1 P_self(13)
-1 device0_Pcons(13)
-1 device1_Pcons(13)
-1 device2_Pcons(13)
-1 device3_Pcons(13)
-1 device4_Pcons(13)
-1 device5_Pcons(13)
-1 device6_Pcons(13)
-1 device7_Pcons(13)
-1 device8_Pcons(13)
= 0

c_e_P_grid_con(14)_:
+1 P_grid_plus(14)
-1 P_grid_minus(14)
+1 P_self(14)
-1 device0_Pcons(14)
-1 device1_Pcons(14)
-1 device2_Pcons(14)
-1 device3_Pcons(14)
-1 device4_Pcons(14)
-1 device5_Pcons(14)
-1 device6_Pcons(14)
-1 device7_Pcons(14)
-1 device8_Pcons(14)
= 0

c_e_P_grid_con(15)_:
+1 P_grid_plus(15)
-1 P_grid_minus(15)
+1 P_self(15)
-1 device0_Pcons(15)
-1 device1_Pcons(15)
-1 device2_Pcons(15)
-1 device3_Pcons(15)
-1 device4_Pcons(15)
-1 device5_Pcons(15)
-1 device6_Pcons(15)
-1 device7_Pcons(15)
-1 device8_Pcons(15)
= 0

c_e_P_grid_con(16)_:
+1 P_grid_plus(16)
-1 P_grid_minus(16)
+1 P_self(16)
-1 device0_Pcons(16)
-1 device1_Pcons(16)
-1 device2_Pcons(16)
-1 device3_Pcons(16)
-1 device4_Pcons(16)
-1 device5_Pcons(16)
-1 device6_Pcons(16)
-1 device7_Pcons(16)
-1 device8_Pcons(16)
= 0

c_e_P_grid_con(17)_:
+1 P_grid_plus(17)
-1 P_grid_minus(17)
+1 P_self(17)
-1 device0_Pcons(17)
-1 device1_Pcons(17)
-1 device2_Pcons(17)
-1 device3_Pcons(17)
-1 device4_Pcons(17)
-1 device5_Pcons(17)
-1 device6_Pcons(17)
-1 device7_Pcons(17)
-1 device8_Pcons(17)
= 0

c_e_P_grid_con(18)_:
+1 P_grid_plus(18)
-1 P_grid_minus(18)
+1 P_self(18)
-1 device0_Pcons(18)
-1 device1_Pcons(18)
-1 device2_Pcons(18)
-1 device3_Pcons(18)
-1 device4_Pcons(18)
-1 device5_Pcons(18)
-1 device6_Pcons(18)
-1 device7_Pcons(18)
-1 device8_Pcons(18)
= 0

c_e_P_grid_con(19)_:
+1 P_grid_plus(19)
-1 P_grid_minus(19)
+1 P_self(19)
-1 device0_Pcons(19)
-1 device1_Pcons(19)
-1 device2_Pcons(19)
-1 device3_Pcons(19)
-1 device4_Pcons(19)
-1 device5_Pcons(19)
-1 device6_Pcons(19)
-1 device7_Pcons(19)
-1 device8_Pcons(19)
= 0

c_e_P_grid_con(20)_:
+1 P_grid_plus(20)
-1 P_grid_minus(20)
+1 P_self(20)
-1 device0_Pcons(20)
-1 device1_Pcons(20)
-1 device2_Pcons(20)
-1 device3_Pcons(20)
-1 device4_Pcons(20)
-1 device5_Pcons(20)
-1 device6_Pcons(20)
-1 device7_Pcons(20)
-1 device8_Pcons(20)
= 0

c_e_P_grid_con(21)_:
+1 P_grid_plus(21)
-1 P_grid_minus(21)
+1 P_self(21)
-1 device0_Pcons(21)
-1 device1_Pcons(21)
-1 device2_Pcons(21)
-1 device3_Pcons(21)
-1 device4_Pcons(21)
-1 device5_Pcons(21)
-1 device6_Pcons(21)
-1 device7_Pcons(21)
-1 device8_Pcons(21)
= 0

c_e_P_grid_con(22)_:
+1 P_grid_plus(22)
-1 P_grid_minus(22)
+1 P_self(22)
-1 device0_Pcons(22)
-1 device1_Pcons(22)
-1 device2_Pcons(22)
-1 device3_Pcons(22)
-1 device4_Pcons(22)
-1 device5_Pcons(22)
-1 device6_Pcons(22)
-1 device7_Pcons(22)
-1 device8_Pcons(22)
= 0

c_e_P_grid_con(23)_:
+1 P_grid_plus(23)
-1 P_grid_minus(23)
+1 P_self(23)
-1 device0_Pcons(23)
-1 device1_Pcons(23)
-1 device2_Pcons(23)
-1 device3_Pcons(23)
-1 device4_Pcons(23)
-1 device5_Pcons(23)
-1 device6_Pcons(23)
-1 device7_Pcons(23)
-1 device8_Pcons(23)
= 0

c_l_device0_p_con_l(0)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(1)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(2)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(3)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(4)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(5)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(6)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(7)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(8)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(9)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(10)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(11)_:
+0 ONE_VAR_CONSTANT
>= -100.0

c_l_device0_p_con_l(12)_:
+0 ONE_VAR_CONSTANT
>= -100.0

c_l_device0_p_con_l(13)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(14)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(15)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(16)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(17)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(18)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(19)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(20)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(21)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(22)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_l_device0_p_con_l(23)_:
+0 ONE_VAR_CONSTANT
>= -200.0

c_u_device0_p_con_u(0)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(1)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(2)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(3)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(4)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(5)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(6)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(7)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(8)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(9)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(10)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(11)_:
+0 ONE_VAR_CONSTANT
<= 100.0

c_u_device0_p_con_u(12)_:
+0 ONE_VAR_CONSTANT
<= 100.0

c_u_device0_p_con_u(13)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(14)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(15)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(16)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(17)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(18)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(19)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(20)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(21)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(22)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_u_device0_p_con_u(23)_:
+0 ONE_VAR_CONSTANT
<= 200.0

c_e_device0_pow_con(0)_:
+1 device0_Pcons(0)
= 2200.0

c_e_device0_pow_con(1)_:
+1 device0_Pcons(1)
= 2200.0

c_e_device0_pow_con(2)_:
+1 device0_Pcons(2)
= 2200.0

c_e_device0_pow_con(3)_:
+1 device0_Pcons(3)
= 2200.0

c_e_device0_pow_con(4)_:
+1 device0_Pcons(4)
= 2200.0

c_e_device0_pow_con(5)_:
+1 device0_Pcons(5)
= 2200.0

c_e_device0_pow_con(6)_:
+1 device0_Pcons(6)
= 2200.0

c_e_device0_pow_con(7)_:
+1 device0_Pcons(7)
= 2200.0

c_e_device0_pow_con(8)_:
+1 device0_Pcons(8)
= 2200.0

c_e_device0_pow_con(9)_:
+1 device0_Pcons(9)
= 1600.0

c_e_device0_pow_con(10)_:
+1 device0_Pcons(10)
= 1600.0

c_e_device0_pow_con(11)_:
+1 device0_Pcons(11)
= 1000.0

c_e_device0_pow_con(12)_:
+1 device0_Pcons(12)
= 1000.0

c_e_device0_pow_con(13)_:
+1 device0_Pcons(13)
= 1600.0

c_e_device0_pow_con(14)_:
+1 device0_Pcons(14)
= 1600.0

c_e_device0_pow_con(15)_:
+1 device0_Pcons(15)
= 1600.0

c_e_device0_pow_con(16)_:
+1 device0_Pcons(16)
= 1600.0

c_e_device0_pow_con(17)_:
+1 device0_Pcons(17)
= 2100.0

c_e_device0_pow_con(18)_:
+1 device0_Pcons(18)
= 2100.0

c_e_device0_pow_con(19)_:
+1 device0_Pcons(19)
= 2100.0

c_e_device0_pow_con(20)_:
+1 device0_Pcons(20)
= 2100.0

c_e_device0_pow_con(21)_:
+1 device0_Pcons(21)
= 2100.0

c_e_device0_pow_con(22)_:
+1 device0_Pcons(22)
= 2100.0

c_e_device0_pow_con(23)_:
+1 device0_Pcons(23)
= 2100.0

c_l_device1_p_con_l(0)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(1)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(2)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(3)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(4)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(5)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(6)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(7)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(8)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(9)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(10)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(11)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(12)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(13)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(14)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(15)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(16)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(17)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(18)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(19)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(20)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(21)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(22)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device1_p_con_l(23)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_u_device1_p_con_u(0)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(1)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(2)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(3)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(4)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(5)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(6)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(7)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(8)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(9)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(10)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(11)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(12)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(13)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(14)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(15)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(16)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(17)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(18)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(19)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(20)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(21)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(22)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device1_p_con_u(23)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_e_device1_pow_con(0)_:
+1 device1_Pcons(0)
= 0

c_e_device1_pow_con(1)_:
+1 device1_Pcons(1)
= 0

c_e_device1_pow_con(2)_:
+1 device1_Pcons(2)
= 0

c_e_device1_pow_con(3)_:
+1 device1_Pcons(3)
= 0

c_e_device1_pow_con(4)_:
+1 device1_Pcons(4)
= 0

c_e_device1_pow_con(5)_:
+1 device1_Pcons(5)
= 0

c_e_device1_pow_con(6)_:
+1 device1_Pcons(6)
= 10

c_e_device1_pow_con(7)_:
+1 device1_Pcons(7)
= 10

c_e_device1_pow_con(8)_:
+1 device1_Pcons(8)
= 0

c_e_device1_pow_con(9)_:
+1 device1_Pcons(9)
= 0

c_e_device1_pow_con(10)_:
+1 device1_Pcons(10)
= 0

c_e_device1_pow_con(11)_:
+1 device1_Pcons(11)
= 0

c_e_device1_pow_con(12)_:
+1 device1_Pcons(12)
= 0

c_e_device1_pow_con(13)_:
+1 device1_Pcons(13)
= 0

c_e_device1_pow_con(14)_:
+1 device1_Pcons(14)
= 0

c_e_device1_pow_con(15)_:
+1 device1_Pcons(15)
= 0

c_e_device1_pow_con(16)_:
+1 device1_Pcons(16)
= 0

c_e_device1_pow_con(17)_:
+1 device1_Pcons(17)
= 10

c_e_device1_pow_con(18)_:
+1 device1_Pcons(18)
= 10

c_e_device1_pow_con(19)_:
+1 device1_Pcons(19)
= 10

c_e_device1_pow_con(20)_:
+1 device1_Pcons(20)
= 10

c_e_device1_pow_con(21)_:
+1 device1_Pcons(21)
= 10

c_e_device1_pow_con(22)_:
+1 device1_Pcons(22)
= 10

c_e_device1_pow_con(23)_:
+1 device1_Pcons(23)
= 0

c_l_device2_p_con_l(0)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(1)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(2)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(3)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(4)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(5)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(6)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(7)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(8)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(9)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(10)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(11)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(12)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(13)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(14)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(15)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(16)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(17)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(18)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(19)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(20)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(21)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(22)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device2_p_con_l(23)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_u_device2_p_con_u(0)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(1)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(2)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(3)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(4)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(5)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(6)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(7)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(8)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(9)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(10)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(11)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(12)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(13)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(14)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(15)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(16)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(17)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(18)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(19)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(20)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(21)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(22)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device2_p_con_u(23)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_e_device2_pow_con(0)_:
+1 device2_Pcons(0)
= 0

c_e_device2_pow_con(1)_:
+1 device2_Pcons(1)
= 0

c_e_device2_pow_con(2)_:
+1 device2_Pcons(2)
= 0

c_e_device2_pow_con(3)_:
+1 device2_Pcons(3)
= 0

c_e_device2_pow_con(4)_:
+1 device2_Pcons(4)
= 0

c_e_device2_pow_con(5)_:
+1 device2_Pcons(5)
= 0

c_e_device2_pow_con(6)_:
+1 device2_Pcons(6)
= 0

c_e_device2_pow_con(7)_:
+1 device2_Pcons(7)
= 0

c_e_device2_pow_con(8)_:
+1 device2_Pcons(8)
= 0

c_e_device2_pow_con(9)_:
+1 device2_Pcons(9)
= 0

c_e_device2_pow_con(10)_:
+1 device2_Pcons(10)
= 20

c_e_device2_pow_con(11)_:
+1 device2_Pcons(11)
= 0

c_e_device2_pow_con(12)_:
+1 device2_Pcons(12)
= 0

c_e_device2_pow_con(13)_:
+1 device2_Pcons(13)
= 20

c_e_device2_pow_con(14)_:
+1 device2_Pcons(14)
= 0

c_e_device2_pow_con(15)_:
+1 device2_Pcons(15)
= 0

c_e_device2_pow_con(16)_:
+1 device2_Pcons(16)
= 0

c_e_device2_pow_con(17)_:
+1 device2_Pcons(17)
= 0

c_e_device2_pow_con(18)_:
+1 device2_Pcons(18)
= 0

c_e_device2_pow_con(19)_:
+1 device2_Pcons(19)
= 0

c_e_device2_pow_con(20)_:
+1 device2_Pcons(20)
= 0

c_e_device2_pow_con(21)_:
+1 device2_Pcons(21)
= 0

c_e_device2_pow_con(22)_:
+1 device2_Pcons(22)
= 0

c_e_device2_pow_con(23)_:
+1 device2_Pcons(23)
= 0

c_l_device3_p_con_l(0)_:
+1 device3_allocated_power(0)
>= 666.6666666666666

c_u_device3_p_con_u(0)_:
+1 device3_allocated_power(0)
<= 666.6666666666666

c_e_device3_bin_t_con_0_:
+1 device3_bin_0(13)
+1 device3_bin_0(14)
+1 device3_bin_0(15)
+1 device3_bin_0(16)
+1 device3_bin_0(17)
+1 device3_bin_0(18)
+1 device3_bin_0(19)
+1 device3_bin_0(20)
+1 device3_bin_0(21)
= 1

c_u_device3_starttime_con_plus_0_:
+13 device3_bin_0(13)
+14 device3_bin_0(14)
+15 device3_bin_0(15)
+16 device3_bin_0(16)
+17 device3_bin_0(17)
+18 device3_bin_0(18)
+19 device3_bin_0(19)
+20 device3_bin_0(20)
+21 device3_bin_0(21)
<= 26

c_u_device3_starttime_con_minus_0_:
-13 device3_bin_0(13)
-14 device3_bin_0(14)
-15 device3_bin_0(15)
-16 device3_bin_0(16)
-17 device3_bin_0(17)
-18 device3_bin_0(18)
-19 device3_bin_0(19)
-20 device3_bin_0(20)
-21 device3_bin_0(21)
<= -22

c_e_device3_bin_p_con_0(0)_:
+1 device3_Pcons(0)
= 0

c_e_device3_bin_p_con_0(1)_:
+1 device3_Pcons(1)
= 0

c_e_device3_bin_p_con_0(2)_:
+1 device3_Pcons(2)
= 0

c_e_device3_bin_p_con_0(3)_:
+1 device3_Pcons(3)
= 0

c_e_device3_bin_p_con_0(4)_:
+1 device3_Pcons(4)
= 0

c_e_device3_bin_p_con_0(5)_:
+1 device3_Pcons(5)
= 0

c_e_device3_bin_p_con_0(6)_:
+1 device3_Pcons(6)
= 0

c_e_device3_bin_p_con_0(7)_:
+1 device3_Pcons(7)
= 0

c_e_device3_bin_p_con_0(8)_:
+1 device3_Pcons(8)
= 0

c_e_device3_bin_p_con_0(9)_:
+1 device3_Pcons(9)
= 0

c_e_device3_bin_p_con_0(10)_:
+1 device3_Pcons(10)
= 0

c_e_device3_bin_p_con_0(11)_:
+1 device3_Pcons(11)
= 0

c_e_device3_bin_p_con_0(12)_:
+1 device3_Pcons(12)
= 0

c_e_device3_bin_p_con_0(13)_:
+1 device3_Pcons(13)
-666.6666666666666 device3_bin_0(13)
= 0

c_e_device3_bin_p_con_0(14)_:
+1 device3_Pcons(14)
-666.6666666666666 device3_bin_0(13)
-666.6666666666666 device3_bin_0(14)
= 0

c_e_device3_bin_p_con_0(15)_:
+1 device3_Pcons(15)
-666.6666666666666 device3_bin_0(13)
-666.6666666666666 device3_bin_0(14)
-666.6666666666666 device3_bin_0(15)
= 0

c_e_device3_bin_p_con_0(16)_:
+1 device3_Pcons(16)
-666.6666666666666 device3_bin_0(14)
-666.6666666666666 device3_bin_0(15)
-666.6666666666666 device3_bin_0(16)
= 0

c_e_device3_bin_p_con_0(17)_:
+1 device3_Pcons(17)
-666.6666666666666 device3_bin_0(15)
-666.6666666666666 device3_bin_0(16)
-666.6666666666666 device3_bin_0(17)
= 0

c_e_device3_bin_p_con_0(18)_:
+1 device3_Pcons(18)
-666.6666666666666 device3_bin_0(16)
-666.6666666666666 device3_bin_0(17)
-666.6666666666666 device3_bin_0(18)
= 0

c_e_device3_bin_p_con_0(19)_:
+1 device3_Pcons(19)
-666.6666666666666 device3_bin_0(17)
-666.6666666666666 device3_bin_0(18)
-666.6666666666666 device3_bin_0(19)
= 0

c_e_device3_bin_p_con_0(20)_:
+1 device3_Pcons(20)
-666.6666666666666 device3_bin_0(18)
-666.6666666666666 device3_bin_0(19)
-666.6666666666666 device3_bin_0(20)
= 0

c_e_device3_bin_p_con_0(21)_:
+1 device3_Pcons(21)
-666.6666666666666 device3_bin_0(19)
-666.6666666666666 device3_bin_0(20)
-666.6666666666666 device3_bin_0(21)
= 0

c_e_device3_bin_p_con_0(22)_:
+1 device3_Pcons(22)
-666.6666666666666 device3_bin_0(20)
-666.6666666666666 device3_bin_0(21)
= 0

c_e_device3_bin_p_con_0(23)_:
+1 device3_Pcons(23)
-666.6666666666666 device3_bin_0(21)
= 0

c_l_device4_p_con_l(0)_:
+1 device4_allocated_power(0)
>= 2400.0

c_u_device4_p_con_u(0)_:
+1 device4_allocated_power(0)
<= 2400.0

c_e_device4_bin_t_con_0_:
+1 device4_bin_0(18)
+1 device4_bin_0(19)
+1 device4_bin_0(20)
+1 device4_bin_0(21)
+1 device4_bin_0(22)
= 1

c_u_device4_starttime_con_plus_0_:
+18 device4_bin_0(18)
+19 device4_bin_0(19)
+20 device4_bin_0(20)
+21 device4_bin_0(21)
+22 device4_bin_0(22)
<= 21

c_u_device4_starttime_con_minus_0_:
-18 device4_bin_0(18)
-19 device4_bin_0(19)
-20 device4_bin_0(20)
-21 device4_bin_0(21)
-22 device4_bin_0(22)
<= -20

c_e_device4_bin_p_con_0(0)_:
+1 device4_Pcons(0)
= 0

c_e_device4_bin_p_con_0(1)_:
+1 device4_Pcons(1)
= 0

c_e_device4_bin_p_con_0(2)_:
+1 device4_Pcons(2)
= 0

c_e_device4_bin_p_con_0(3)_:
+1 device4_Pcons(3)
= 0

c_e_device4_bin_p_con_0(4)_:
+1 device4_Pcons(4)
= 0

c_e_device4_bin_p_con_0(5)_:
+1 device4_Pcons(5)
= 0

c_e_device4_bin_p_con_0(6)_:
+1 device4_Pcons(6)
= 0

c_e_device4_bin_p_con_0(7)_:
+1 device4_Pcons(7)
= 0

c_e_device4_bin_p_con_0(8)_:
+1 device4_Pcons(8)
= 0

c_e_device4_bin_p_con_0(9)_:
+1 device4_Pcons(9)
= 0

c_e_device4_bin_p_con_0(10)_:
+1 device4_Pcons(10)
= 0

c_e_device4_bin_p_con_0(11)_:
+1 device4_Pcons(11)
= 0

c_e_device4_bin_p_con_0(12)_:
+1 device4_Pcons(12)
= 0

c_e_device4_bin_p_con_0(13)_:
+1 device4_Pcons(13)
= 0

c_e_device4_bin_p_con_0(14)_:
+1 device4_Pcons(14)
= 0

c_e_device4_bin_p_con_0(15)_:
+1 device4_Pcons(15)
= 0

c_e_device4_bin_p_con_0(16)_:
+1 device4_Pcons(16)
= 0

c_e_device4_bin_p_con_0(17)_:
+1 device4_Pcons(17)
= 0

c_e_device4_bin_p_con_0(18)_:
+1 device4_Pcons(18)
-2400.0 device4_bin_0(18)
= 0

c_e_device4_bin_p_con_0(19)_:
+1 device4_Pcons(19)
-2400.0 device4_bin_0(19)
= 0

c_e_device4_bin_p_con_0(20)_:
+1 device4_Pcons(20)
-2400.0 device4_bin_0(20)
= 0

c_e_device4_bin_p_con_0(21)_:
+1 device4_Pcons(21)
-2400.0 device4_bin_0(21)
= 0

c_e_device4_bin_p_con_0(22)_:
+1 device4_Pcons(22)
-2400.0 device4_bin_0(22)
= 0

c_e_device4_bin_p_con_0(23)_:
+1 device4_Pcons(23)
= 0

c_l_device5_p_con_l(0)_:
+1 device5_allocated_power(0)
>= 2400.0

c_u_device5_p_con_u(0)_:
+1 device5_allocated_power(0)
<= 2400.0

c_e_device5_bin_t_con_0_:
+1 device5_bin_0(13)
+1 device5_bin_0(14)
= 1

c_u_device5_starttime_con_plus_0_:
+13 device5_bin_0(13)
+14 device5_bin_0(14)
<= 14

c_u_device5_starttime_con_minus_0_:
-13 device5_bin_0(13)
-14 device5_bin_0(14)
<= -13

c_e_device5_bin_p_con_0(0)_:
+1 device5_Pcons(0)
= 0

c_e_device5_bin_p_con_0(1)_:
+1 device5_Pcons(1)
= 0

c_e_device5_bin_p_con_0(2)_:
+1 device5_Pcons(2)
= 0

c_e_device5_bin_p_con_0(3)_:
+1 device5_Pcons(3)
= 0

c_e_device5_bin_p_con_0(4)_:
+1 device5_Pcons(4)
= 0

c_e_device5_bin_p_con_0(5)_:
+1 device5_Pcons(5)
= 0

c_e_device5_bin_p_con_0(6)_:
+1 device5_Pcons(6)
= 0

c_e_device5_bin_p_con_0(7)_:
+1 device5_Pcons(7)
= 0

c_e_device5_bin_p_con_0(8)_:
+1 device5_Pcons(8)
= 0

c_e_device5_bin_p_con_0(9)_:
+1 device5_Pcons(9)
= 0

c_e_device5_bin_p_con_0(10)_:
+1 device5_Pcons(10)
= 0

c_e_device5_bin_p_con_0(11)_:
+1 device5_Pcons(11)
= 0

c_e_device5_bin_p_con_0(12)_:
+1 device5_Pcons(12)
= 0

c_e_device5_bin_p_con_0(13)_:
+1 device5_Pcons(13)
-2400.0 device5_bin_0(13)
= 0

c_e_device5_bin_p_con_0(14)_:
+1 device5_Pcons(14)
-2400.0 device5_bin_0(14)
= 0

c_e_device5_bin_p_con_0(15)_:
+1 device5_Pcons(15)
= 0

c_e_device5_bin_p_con_0(16)_:
+1 device5_Pcons(16)
= 0

c_e_device5_bin_p_con_0(17)_:
+1 device5_Pcons(17)
= 0

c_e_device5_bin_p_con_0(18)_:
+1 device5_Pcons(18)
= 0

c_e_device5_bin_p_con_0(19)_:
+1 device5_Pcons(19)
= 0

c_e_device5_bin_p_con_0(20)_:
+1 device5_Pcons(20)
= 0

c_e_device5_bin_p_con_0(21)_:
+1 device5_Pcons(21)
= 0

c_e_device5_bin_p_con_0(22)_:
+1 device5_Pcons(22)
= 0

c_e_device5_bin_p_con_0(23)_:
+1 device5_Pcons(23)
= 0

c_l_device6_p_con_l(0)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(1)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(2)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(3)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(4)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(5)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(6)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(7)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(8)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(9)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(10)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(11)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(12)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(13)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(14)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(15)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(16)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(17)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(18)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(19)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(20)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(21)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(22)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device6_p_con_l(23)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_u_device6_p_con_u(0)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(1)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(2)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(3)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(4)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(5)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(6)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(7)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(8)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(9)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(10)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(11)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(12)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(13)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(14)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(15)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(16)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(17)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(18)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(19)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(20)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(21)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(22)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device6_p_con_u(23)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_e_device6_pow_con(0)_:
+1 device6_Pcons(0)
= 15

c_e_device6_pow_con(1)_:
+1 device6_Pcons(1)
= 15

c_e_device6_pow_con(2)_:
+1 device6_Pcons(2)
= 15

c_e_device6_pow_con(3)_:
+1 device6_Pcons(3)
= 15

c_e_device6_pow_con(4)_:
+1 device6_Pcons(4)
= 15

c_e_device6_pow_con(5)_:
+1 device6_Pcons(5)
= 15

c_e_device6_pow_con(6)_:
+1 device6_Pcons(6)
= 15

c_e_device6_pow_con(7)_:
+1 device6_Pcons(7)
= 15

c_e_device6_pow_con(8)_:
+1 device6_Pcons(8)
= 15

c_e_device6_pow_con(9)_:
+1 device6_Pcons(9)
= 15

c_e_device6_pow_con(10)_:
+1 device6_Pcons(10)
= 15

c_e_device6_pow_con(11)_:
+1 device6_Pcons(11)
= 15

c_e_device6_pow_con(12)_:
+1 device6_Pcons(12)
= 15

c_e_device6_pow_con(13)_:
+1 device6_Pcons(13)
= 15

c_e_device6_pow_con(14)_:
+1 device6_Pcons(14)
= 15

c_e_device6_pow_con(15)_:
+1 device6_Pcons(15)
= 15

c_e_device6_pow_con(16)_:
+1 device6_Pcons(16)
= 15

c_e_device6_pow_con(17)_:
+1 device6_Pcons(17)
= 15

c_e_device6_pow_con(18)_:
+1 device6_Pcons(18)
= 15

c_e_device6_pow_con(19)_:
+1 device6_Pcons(19)
= 15

c_e_device6_pow_con(20)_:
+1 device6_Pcons(20)
= 15

c_e_device6_pow_con(21)_:
+1 device6_Pcons(21)
= 15

c_e_device6_pow_con(22)_:
+1 device6_Pcons(22)
= 15

c_e_device6_pow_con(23)_:
+1 device6_Pcons(23)
= 15

c_l_device7_p_con_l(0)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(1)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device7_p_con_l(2)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(3)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device7_p_con_l(4)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(5)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device7_p_con_l(6)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(7)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device7_p_con_l(8)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(9)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device7_p_con_l(10)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(11)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device7_p_con_l(12)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(13)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device7_p_con_l(14)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(15)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(16)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device7_p_con_l(17)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(18)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device7_p_con_l(19)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(20)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device7_p_con_l(21)_:
+0 ONE_VAR_CONSTANT
>= -6.111111111111107

c_l_device7_p_con_l(22)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device7_p_con_l(23)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_u_device7_p_con_u(0)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(1)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device7_p_con_u(2)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(3)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device7_p_con_u(4)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(5)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device7_p_con_u(6)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(7)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device7_p_con_u(8)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(9)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device7_p_con_u(10)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(11)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device7_p_con_u(12)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(13)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device7_p_con_u(14)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(15)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(16)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device7_p_con_u(17)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(18)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device7_p_con_u(19)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(20)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device7_p_con_u(21)_:
+0 ONE_VAR_CONSTANT
<= 6.111111111111107

c_u_device7_p_con_u(22)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device7_p_con_u(23)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_e_device7_pow_con(0)_:
+1 device7_Pcons(0)
= 42.77777777777777

c_e_device7_pow_con(1)_:
+1 device7_Pcons(1)
= 0.0

c_e_device7_pow_con(2)_:
+1 device7_Pcons(2)
= 42.77777777777777

c_e_device7_pow_con(3)_:
+1 device7_Pcons(3)
= 0.0

c_e_device7_pow_con(4)_:
+1 device7_Pcons(4)
= 42.77777777777777

c_e_device7_pow_con(5)_:
+1 device7_Pcons(5)
= 0.0

c_e_device7_pow_con(6)_:
+1 device7_Pcons(6)
= 42.77777777777777

c_e_device7_pow_con(7)_:
+1 device7_Pcons(7)
= 0.0

c_e_device7_pow_con(8)_:
+1 device7_Pcons(8)
= 42.77777777777777

c_e_device7_pow_con(9)_:
+1 device7_Pcons(9)
= 0.0

c_e_device7_pow_con(10)_:
+1 device7_Pcons(10)
= 42.77777777777777

c_e_device7_pow_con(11)_:
+1 device7_Pcons(11)
= 0.0

c_e_device7_pow_con(12)_:
+1 device7_Pcons(12)
= 42.77777777777777

c_e_device7_pow_con(13)_:
+1 device7_Pcons(13)
= 0.0

c_e_device7_pow_con(14)_:
+1 device7_Pcons(14)
= 42.77777777777777

c_e_device7_pow_con(15)_:
+1 device7_Pcons(15)
= 42.77777777777777

c_e_device7_pow_con(16)_:
+1 device7_Pcons(16)
= 0.0

c_e_device7_pow_con(17)_:
+1 device7_Pcons(17)
= 42.77777777777777

c_e_device7_pow_con(18)_:
+1 device7_Pcons(18)
= 0.0

c_e_device7_pow_con(19)_:
+1 device7_Pcons(19)
= 42.77777777777777

c_e_device7_pow_con(20)_:
+1 device7_Pcons(20)
= 0.0

c_e_device7_pow_con(21)_:
+1 device7_Pcons(21)
= 42.77777777777777

c_e_device7_pow_con(22)_:
+1 device7_Pcons(22)
= 0.0

c_e_device7_pow_con(23)_:
+1 device7_Pcons(23)
= 0.0

c_l_device8_p_con_l(0)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(1)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(2)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(3)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(4)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(5)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(6)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(7)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(8)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(9)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(10)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(11)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(12)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(13)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(14)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(15)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(16)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(17)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(18)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(19)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(20)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(21)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(22)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device8_p_con_l(23)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_u_device8_p_con_u(0)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(1)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(2)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(3)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(4)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(5)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(6)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(7)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(8)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(9)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(10)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(11)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(12)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(13)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(14)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(15)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(16)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(17)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(18)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(19)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(20)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(21)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(22)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device8_p_con_u(23)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_e_device8_pow_con(0)_:
+1 device8_Pcons(0)
= 0

c_e_device8_pow_con(1)_:
+1 device8_Pcons(1)
= 0

c_e_device8_pow_con(2)_:
+1 device8_Pcons(2)
= 0

c_e_device8_pow_con(3)_:
+1 device8_Pcons(3)
= 0

c_e_device8_pow_con(4)_:
+1 device8_Pcons(4)
= 0

c_e_device8_pow_con(5)_:
+1 device8_Pcons(5)
= 0

c_e_device8_pow_con(6)_:
+1 device8_Pcons(6)
= 675.0

c_e_device8_pow_con(7)_:
+1 device8_Pcons(7)
= 0

c_e_device8_pow_con(8)_:
+1 device8_Pcons(8)
= 0

c_e_device8_pow_con(9)_:
+1 device8_Pcons(9)
= 0

c_e_device8_pow_con(10)_:
+1 device8_Pcons(10)
= 0

c_e_device8_pow_con(11)_:
+1 device8_Pcons(11)
= 0

c_e_device8_pow_con(12)_:
+1 device8_Pcons(12)
= 675.0

c_e_device8_pow_con(13)_:
+1 device8_Pcons(13)
= 0

c_e_device8_pow_con(14)_:
+1 device8_Pcons(14)
= 0

c_e_device8_pow_con(15)_:
+1 device8_Pcons(15)
= 0

c_e_device8_pow_con(16)_:
+1 device8_Pcons(16)
= 0

c_e_device8_pow_con(17)_:
+1 device8_Pcons(17)
= 675.0

c_e_device8_pow_con(18)_:
+1 device8_Pcons(18)
= 675.0

c_e_device8_pow_con(19)_:
+1 device8_Pcons(19)
= 0

c_e_device8_pow_con(20)_:
+1 device8_Pcons(20)
= 0

c_e_device8_pow_con(21)_:
+1 device8_Pcons(21)
= 0

c_e_device8_pow_con(22)_:
+1 device8_Pcons(22)
= 0

c_e_device8_pow_con(23)_:
+1 device8_Pcons(23)
= 0

c_l_device10_p_con_l(0)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(1)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(2)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(3)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(4)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(5)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(6)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(7)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(8)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(9)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(10)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(11)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(12)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(13)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(14)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(15)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(16)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(17)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(18)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(19)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(20)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(21)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(22)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_l_device10_p_con_l(23)_:
+0 ONE_VAR_CONSTANT
>= 0.0

c_u_device10_p_con_u(0)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(1)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(2)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(3)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(4)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(5)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(6)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(7)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(8)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(9)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(10)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(11)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(12)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(13)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(14)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(15)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(16)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(17)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(18)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(19)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(20)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(21)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(22)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_device10_p_con_u(23)_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_e_device10_pow_con(0)_:
+1 device10_Pcons(0)
= 0.0

c_e_device10_pow_con(1)_:
+1 device10_Pcons(1)
= 0.0

c_e_device10_pow_con(2)_:
+1 device10_Pcons(2)
= 0.0

c_e_device10_pow_con(3)_:
+1 device10_Pcons(3)
= 0.0

c_e_device10_pow_con(4)_:
+1 device10_Pcons(4)
= 0.0

c_e_device10_pow_con(5)_:
+1 device10_Pcons(5)
= 0.0

c_e_device10_pow_con(6)_:
+1 device10_Pcons(6)
= 0.0

c_e_device10_pow_con(7)_:
+1 device10_Pcons(7)
= 0.0

c_e_device10_pow_con(8)_:
+1 device10_Pcons(8)
= -733.0621557243085

c_e_device10_pow_con(9)_:
+1 device10_Pcons(9)
= -2739.931594005922

c_e_device10_pow_con(10)_:
+1 device10_Pcons(10)
= -4297.5692907599305

c_e_device10_pow_con(11)_:
+1 device10_Pcons(11)
= -5204.28113397075

c_e_device10_pow_con(12)_:
+1 device10_Pcons(12)
= -5389.8258250500885

c_e_device10_pow_con(13)_:
+1 device10_Pcons(13)
= -4841.179637436456

c_e_device10_pow_con(14)_:
+1 device10_Pcons(14)
= -3597.9346998767755

c_e_device10_pow_con(15)_:
+1 device10_Pcons(15)
= -1703.5034342426782

c_e_device10_pow_con(16)_:
+1 device10_Pcons(16)
= 0.0

c_e_device10_pow_con(17)_:
+1 device10_Pcons(17)
= 0.0

c_e_device10_pow_con(18)_:
+1 device10_Pcons(18)
= 0.0

c_e_device10_pow_con(19)_:
+1 device10_Pcons(19)
= 0.0

c_e_device10_pow_con(20)_:
+1 device10_Pcons(20)
= 0.0

c_e_device10_pow_con(21)_:
+1 device10_Pcons(21)
= 0.0

c_e_device10_pow_con(22)_:
+1 device10_Pcons(22)
= 0.0

c_e_device10_pow_con(23)_:
+1 device10_Pcons(23)
= 0.0

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
   -inf <= device10_Pcons(0) <= +inf
   -inf <= device10_Pcons(1) <= +inf
   -inf <= device10_Pcons(2) <= +inf
   -inf <= device10_Pcons(3) <= +inf
   -inf <= device10_Pcons(4) <= +inf
   -inf <= device10_Pcons(5) <= +inf
   -inf <= device10_Pcons(6) <= +inf
   -inf <= device10_Pcons(7) <= +inf
   -inf <= device10_Pcons(8) <= +inf
   -inf <= device10_Pcons(9) <= +inf
   -inf <= device10_Pcons(10) <= +inf
   -inf <= device10_Pcons(11) <= +inf
   -inf <= device10_Pcons(12) <= +inf
   -inf <= device10_Pcons(13) <= +inf
   -inf <= device10_Pcons(14) <= +inf
   -inf <= device10_Pcons(15) <= +inf
   -inf <= device10_Pcons(16) <= +inf
   -inf <= device10_Pcons(17) <= +inf
   -inf <= device10_Pcons(18) <= +inf
   -inf <= device10_Pcons(19) <= +inf
   -inf <= device10_Pcons(20) <= +inf
   -inf <= device10_Pcons(21) <= +inf
   -inf <= device10_Pcons(22) <= +inf
   -inf <= device10_Pcons(23) <= +inf
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
   -inf <= device3_Pcons(0) <= +inf
   -inf <= device3_Pcons(1) <= +inf
   -inf <= device3_Pcons(2) <= +inf
   -inf <= device3_Pcons(3) <= +inf
   -inf <= device3_Pcons(4) <= +inf
   -inf <= device3_Pcons(5) <= +inf
   -inf <= device3_Pcons(6) <= +inf
   -inf <= device3_Pcons(7) <= +inf
   -inf <= device3_Pcons(8) <= +inf
   -inf <= device3_Pcons(9) <= +inf
   -inf <= device3_Pcons(10) <= +inf
   -inf <= device3_Pcons(11) <= +inf
   -inf <= device3_Pcons(12) <= +inf
   -inf <= device3_Pcons(13) <= +inf
   -inf <= device3_Pcons(14) <= +inf
   -inf <= device3_Pcons(15) <= +inf
   -inf <= device3_Pcons(16) <= +inf
   -inf <= device3_Pcons(17) <= +inf
   -inf <= device3_Pcons(18) <= +inf
   -inf <= device3_Pcons(19) <= +inf
   -inf <= device3_Pcons(20) <= +inf
   -inf <= device3_Pcons(21) <= +inf
   -inf <= device3_Pcons(22) <= +inf
   -inf <= device3_Pcons(23) <= +inf
   -inf <= device4_Pcons(0) <= +inf
   -inf <= device4_Pcons(1) <= +inf
   -inf <= device4_Pcons(2) <= +inf
   -inf <= device4_Pcons(3) <= +inf
   -inf <= device4_Pcons(4) <= +inf
   -inf <= device4_Pcons(5) <= +inf
   -inf <= device4_Pcons(6) <= +inf
   -inf <= device4_Pcons(7) <= +inf
   -inf <= device4_Pcons(8) <= +inf
   -inf <= device4_Pcons(9) <= +inf
   -inf <= device4_Pcons(10) <= +inf
   -inf <= device4_Pcons(11) <= +inf
   -inf <= device4_Pcons(12) <= +inf
   -inf <= device4_Pcons(13) <= +inf
   -inf <= device4_Pcons(14) <= +inf
   -inf <= device4_Pcons(15) <= +inf
   -inf <= device4_Pcons(16) <= +inf
   -inf <= device4_Pcons(17) <= +inf
   -inf <= device4_Pcons(18) <= +inf
   -inf <= device4_Pcons(19) <= +inf
   -inf <= device4_Pcons(20) <= +inf
   -inf <= device4_Pcons(21) <= +inf
   -inf <= device4_Pcons(22) <= +inf
   -inf <= device4_Pcons(23) <= +inf
   -inf <= device5_Pcons(0) <= +inf
   -inf <= device5_Pcons(1) <= +inf
   -inf <= device5_Pcons(2) <= +inf
   -inf <= device5_Pcons(3) <= +inf
   -inf <= device5_Pcons(4) <= +inf
   -inf <= device5_Pcons(5) <= +inf
   -inf <= device5_Pcons(6) <= +inf
   -inf <= device5_Pcons(7) <= +inf
   -inf <= device5_Pcons(8) <= +inf
   -inf <= device5_Pcons(9) <= +inf
   -inf <= device5_Pcons(10) <= +inf
   -inf <= device5_Pcons(11) <= +inf
   -inf <= device5_Pcons(12) <= +inf
   -inf <= device5_Pcons(13) <= +inf
   -inf <= device5_Pcons(14) <= +inf
   -inf <= device5_Pcons(15) <= +inf
   -inf <= device5_Pcons(16) <= +inf
   -inf <= device5_Pcons(17) <= +inf
   -inf <= device5_Pcons(18) <= +inf
   -inf <= device5_Pcons(19) <= +inf
   -inf <= device5_Pcons(20) <= +inf
   -inf <= device5_Pcons(21) <= +inf
   -inf <= device5_Pcons(22) <= +inf
   -inf <= device5_Pcons(23) <= +inf
   -inf <= device6_Pcons(0) <= +inf
   -inf <= device6_Pcons(1) <= +inf
   -inf <= device6_Pcons(2) <= +inf
   -inf <= device6_Pcons(3) <= +inf
   -inf <= device6_Pcons(4) <= +inf
   -inf <= device6_Pcons(5) <= +inf
   -inf <= device6_Pcons(6) <= +inf
   -inf <= device6_Pcons(7) <= +inf
   -inf <= device6_Pcons(8) <= +inf
   -inf <= device6_Pcons(9) <= +inf
   -inf <= device6_Pcons(10) <= +inf
   -inf <= device6_Pcons(11) <= +inf
   -inf <= device6_Pcons(12) <= +inf
   -inf <= device6_Pcons(13) <= +inf
   -inf <= device6_Pcons(14) <= +inf
   -inf <= device6_Pcons(15) <= +inf
   -inf <= device6_Pcons(16) <= +inf
   -inf <= device6_Pcons(17) <= +inf
   -inf <= device6_Pcons(18) <= +inf
   -inf <= device6_Pcons(19) <= +inf
   -inf <= device6_Pcons(20) <= +inf
   -inf <= device6_Pcons(21) <= +inf
   -inf <= device6_Pcons(22) <= +inf
   -inf <= device6_Pcons(23) <= +inf
   -inf <= device7_Pcons(0) <= +inf
   -inf <= device7_Pcons(1) <= +inf
   -inf <= device7_Pcons(2) <= +inf
   -inf <= device7_Pcons(3) <= +inf
   -inf <= device7_Pcons(4) <= +inf
   -inf <= device7_Pcons(5) <= +inf
   -inf <= device7_Pcons(6) <= +inf
   -inf <= device7_Pcons(7) <= +inf
   -inf <= device7_Pcons(8) <= +inf
   -inf <= device7_Pcons(9) <= +inf
   -inf <= device7_Pcons(10) <= +inf
   -inf <= device7_Pcons(11) <= +inf
   -inf <= device7_Pcons(12) <= +inf
   -inf <= device7_Pcons(13) <= +inf
   -inf <= device7_Pcons(14) <= +inf
   -inf <= device7_Pcons(15) <= +inf
   -inf <= device7_Pcons(16) <= +inf
   -inf <= device7_Pcons(17) <= +inf
   -inf <= device7_Pcons(18) <= +inf
   -inf <= device7_Pcons(19) <= +inf
   -inf <= device7_Pcons(20) <= +inf
   -inf <= device7_Pcons(21) <= +inf
   -inf <= device7_Pcons(22) <= +inf
   -inf <= device7_Pcons(23) <= +inf
   -inf <= device8_Pcons(0) <= +inf
   -inf <= device8_Pcons(1) <= +inf
   -inf <= device8_Pcons(2) <= +inf
   -inf <= device8_Pcons(3) <= +inf
   -inf <= device8_Pcons(4) <= +inf
   -inf <= device8_Pcons(5) <= +inf
   -inf <= device8_Pcons(6) <= +inf
   -inf <= device8_Pcons(7) <= +inf
   -inf <= device8_Pcons(8) <= +inf
   -inf <= device8_Pcons(9) <= +inf
   -inf <= device8_Pcons(10) <= +inf
   -inf <= device8_Pcons(11) <= +inf
   -inf <= device8_Pcons(12) <= +inf
   -inf <= device8_Pcons(13) <= +inf
   -inf <= device8_Pcons(14) <= +inf
   -inf <= device8_Pcons(15) <= +inf
   -inf <= device8_Pcons(16) <= +inf
   -inf <= device8_Pcons(17) <= +inf
   -inf <= device8_Pcons(18) <= +inf
   -inf <= device8_Pcons(19) <= +inf
   -inf <= device8_Pcons(20) <= +inf
   -inf <= device8_Pcons(21) <= +inf
   -inf <= device8_Pcons(22) <= +inf
   -inf <= device8_Pcons(23) <= +inf
   -inf <= device3_allocated_power(0) <= +inf
   0 <= device3_bin_0(13) <= 1
   0 <= device3_bin_0(14) <= 1
   0 <= device3_bin_0(15) <= 1
   0 <= device3_bin_0(16) <= 1
   0 <= device3_bin_0(17) <= 1
   0 <= device3_bin_0(18) <= 1
   0 <= device3_bin_0(19) <= 1
   0 <= device3_bin_0(20) <= 1
   0 <= device3_bin_0(21) <= 1
   -inf <= device4_allocated_power(0) <= +inf
   0 <= device4_bin_0(18) <= 1
   0 <= device4_bin_0(19) <= 1
   0 <= device4_bin_0(20) <= 1
   0 <= device4_bin_0(21) <= 1
   0 <= device4_bin_0(22) <= 1
   -inf <= device5_allocated_power(0) <= +inf
   0 <= device5_bin_0(13) <= 1
   0 <= device5_bin_0(14) <= 1
binary
  device3_bin_0(13)
  device3_bin_0(14)
  device3_bin_0(15)
  device3_bin_0(16)
  device3_bin_0(17)
  device3_bin_0(18)
  device3_bin_0(19)
  device3_bin_0(20)
  device3_bin_0(21)
  device4_bin_0(18)
  device4_bin_0(19)
  device4_bin_0(20)
  device4_bin_0(21)
  device4_bin_0(22)
  device5_bin_0(13)
  device5_bin_0(14)
end
