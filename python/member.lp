\* Source Pyomo model name=member_0 *\

min 
member_0_obj:
+1400.0 ONE_VAR_CONSTANT
+0.5 P_exchange_0_0(0)
+0.5 P_exchange_0_0(1)
+0.5 P_exchange_0_0(2)
+0.5 P_exchange_0_0(3)
+0.5 P_exchange_0_0(4)
+0.5 P_exchange_0_0(5)
+0.5 P_exchange_0_0(6)
+0.5 P_exchange_0_0(7)
+0.5 P_exchange_0_0(8)
+0.5 P_exchange_0_0(9)
+0.5 P_exchange_0_0(10)
+0.5 P_exchange_0_0(11)
+0.5 P_exchange_0_0(12)
+0.5 P_exchange_0_0(13)
+0.5 P_exchange_0_0(14)
+0.5 P_exchange_0_0(15)
+0.5 P_exchange_0_0(16)
+0.5 P_exchange_0_0(17)
+0.5 P_exchange_0_0(18)
+0.5 P_exchange_0_0(19)
+0.5 P_exchange_0_0(20)
+0.5 P_exchange_0_0(21)
+0.5 P_exchange_0_0(22)
+0.5 P_exchange_0_0(23)
+2 member_0_P_grid_plus(0)
+2 member_0_P_grid_plus(1)
+2 member_0_P_grid_plus(2)
+2 member_0_P_grid_plus(3)
+2 member_0_P_grid_plus(4)
+2 member_0_P_grid_plus(5)
+2 member_0_P_grid_plus(6)
+2 member_0_P_grid_plus(7)
+2 member_0_P_grid_plus(8)
+2 member_0_P_grid_plus(9)
+2 member_0_P_grid_plus(10)
+2 member_0_P_grid_plus(11)
+2 member_0_P_grid_plus(12)
+2 member_0_P_grid_plus(13)
+2 member_0_P_grid_plus(14)
+2 member_0_P_grid_plus(15)
+2 member_0_P_grid_plus(16)
+2 member_0_P_grid_plus(17)
+2 member_0_P_grid_plus(18)
+2 member_0_P_grid_plus(19)
+2 member_0_P_grid_plus(20)
+2 member_0_P_grid_plus(21)
+2 member_0_P_grid_plus(22)
+2 member_0_P_grid_plus(23)
-0.25 member_0_P_grid_minus(0)
-0.25 member_0_P_grid_minus(1)
-0.25 member_0_P_grid_minus(2)
-0.25 member_0_P_grid_minus(3)
-0.25 member_0_P_grid_minus(4)
-0.25 member_0_P_grid_minus(5)
-0.25 member_0_P_grid_minus(6)
-0.25 member_0_P_grid_minus(7)
-0.25 member_0_P_grid_minus(8)
-0.25 member_0_P_grid_minus(9)
-0.25 member_0_P_grid_minus(10)
-0.25 member_0_P_grid_minus(11)
-0.25 member_0_P_grid_minus(12)
-0.25 member_0_P_grid_minus(13)
-0.25 member_0_P_grid_minus(14)
-0.25 member_0_P_grid_minus(15)
-0.25 member_0_P_grid_minus(16)
-0.25 member_0_P_grid_minus(17)
-0.25 member_0_P_grid_minus(18)
-0.25 member_0_P_grid_minus(19)
-0.25 member_0_P_grid_minus(20)
-0.25 member_0_P_grid_minus(21)
-0.25 member_0_P_grid_minus(22)
-0.25 member_0_P_grid_minus(23)
+0.5 member_0_P_self(0)
+0.5 member_0_P_self(1)
+0.5 member_0_P_self(2)
+0.5 member_0_P_self(3)
+0.5 member_0_P_self(4)
+0.5 member_0_P_self(5)
+0.5 member_0_P_self(6)
+0.5 member_0_P_self(7)
+0.5 member_0_P_self(8)
+0.5 member_0_P_self(9)
+0.5 member_0_P_self(10)
+0.5 member_0_P_self(11)
+0.5 member_0_P_self(12)
+0.5 member_0_P_self(13)
+0.5 member_0_P_self(14)
+0.5 member_0_P_self(15)
+0.5 member_0_P_self(16)
+0.5 member_0_P_self(17)
+0.5 member_0_P_self(18)
+0.5 member_0_P_self(19)
+0.5 member_0_P_self(20)
+0.5 member_0_P_self(21)
+0.5 member_0_P_self(22)
+0.5 member_0_P_self(23)

s.t.

c_e_member_0_P_prod_con(0)_:
+1 member_0_P_self(0)
+1 member_0_P_surplus(0)
= 0

c_e_member_0_P_prod_con(1)_:
+1 member_0_P_self(1)
+1 member_0_P_surplus(1)
= 0

c_e_member_0_P_prod_con(2)_:
+1 member_0_P_self(2)
+1 member_0_P_surplus(2)
= 0

c_e_member_0_P_prod_con(3)_:
+1 member_0_P_self(3)
+1 member_0_P_surplus(3)
= 0

c_e_member_0_P_prod_con(4)_:
+1 member_0_P_self(4)
+1 member_0_P_surplus(4)
= 0

c_e_member_0_P_prod_con(5)_:
+1 member_0_P_self(5)
+1 member_0_P_surplus(5)
= 0

c_e_member_0_P_prod_con(6)_:
+1 member_0_P_self(6)
+1 member_0_P_surplus(6)
= 0

c_e_member_0_P_prod_con(7)_:
+1 member_0_P_self(7)
+1 member_0_P_surplus(7)
= 0

c_e_member_0_P_prod_con(8)_:
+1 member_0_P_self(8)
+1 member_0_P_surplus(8)
= 0

c_e_member_0_P_prod_con(9)_:
+1 member_0_P_self(9)
+1 member_0_P_surplus(9)
= 0

c_e_member_0_P_prod_con(10)_:
+1 member_0_P_self(10)
+1 member_0_P_surplus(10)
= 0

c_e_member_0_P_prod_con(11)_:
+1 member_0_P_self(11)
+1 member_0_P_surplus(11)
= 0

c_e_member_0_P_prod_con(12)_:
+1 member_0_P_self(12)
+1 member_0_P_surplus(12)
= 0

c_e_member_0_P_prod_con(13)_:
+1 member_0_P_self(13)
+1 member_0_P_surplus(13)
= 0

c_e_member_0_P_prod_con(14)_:
+1 member_0_P_self(14)
+1 member_0_P_surplus(14)
= 0

c_e_member_0_P_prod_con(15)_:
+1 member_0_P_self(15)
+1 member_0_P_surplus(15)
= 0

c_e_member_0_P_prod_con(16)_:
+1 member_0_P_self(16)
+1 member_0_P_surplus(16)
= 0

c_e_member_0_P_prod_con(17)_:
+1 member_0_P_self(17)
+1 member_0_P_surplus(17)
= 0

c_e_member_0_P_prod_con(18)_:
+1 member_0_P_self(18)
+1 member_0_P_surplus(18)
= 0

c_e_member_0_P_prod_con(19)_:
+1 member_0_P_self(19)
+1 member_0_P_surplus(19)
= 0

c_e_member_0_P_prod_con(20)_:
+1 member_0_P_self(20)
+1 member_0_P_surplus(20)
= 0

c_e_member_0_P_prod_con(21)_:
+1 member_0_P_self(21)
+1 member_0_P_surplus(21)
= 0

c_e_member_0_P_prod_con(22)_:
+1 member_0_P_self(22)
+1 member_0_P_surplus(22)
= 0

c_e_member_0_P_prod_con(23)_:
+1 member_0_P_self(23)
+1 member_0_P_surplus(23)
= 0

c_e_member_0_P_grid_con(0)_:
+1 P_exchange_0_0(0)
+1 member_0_P_grid_plus(0)
-1 member_0_P_grid_minus(0)
+1 member_0_P_self(0)
-1 member_0_device0_Pcons(0)
= 0

c_e_member_0_P_grid_con(1)_:
+1 P_exchange_0_0(1)
+1 member_0_P_grid_plus(1)
-1 member_0_P_grid_minus(1)
+1 member_0_P_self(1)
-1 member_0_device0_Pcons(1)
= 0

c_e_member_0_P_grid_con(2)_:
+1 P_exchange_0_0(2)
+1 member_0_P_grid_plus(2)
-1 member_0_P_grid_minus(2)
+1 member_0_P_self(2)
-1 member_0_device0_Pcons(2)
= 0

c_e_member_0_P_grid_con(3)_:
+1 P_exchange_0_0(3)
+1 member_0_P_grid_plus(3)
-1 member_0_P_grid_minus(3)
+1 member_0_P_self(3)
-1 member_0_device0_Pcons(3)
= 0

c_e_member_0_P_grid_con(4)_:
+1 P_exchange_0_0(4)
+1 member_0_P_grid_plus(4)
-1 member_0_P_grid_minus(4)
+1 member_0_P_self(4)
-1 member_0_device0_Pcons(4)
= 0

c_e_member_0_P_grid_con(5)_:
+1 P_exchange_0_0(5)
+1 member_0_P_grid_plus(5)
-1 member_0_P_grid_minus(5)
+1 member_0_P_self(5)
-1 member_0_device0_Pcons(5)
= 0

c_e_member_0_P_grid_con(6)_:
+1 P_exchange_0_0(6)
+1 member_0_P_grid_plus(6)
-1 member_0_P_grid_minus(6)
+1 member_0_P_self(6)
-1 member_0_device0_Pcons(6)
= 0

c_e_member_0_P_grid_con(7)_:
+1 P_exchange_0_0(7)
+1 member_0_P_grid_plus(7)
-1 member_0_P_grid_minus(7)
+1 member_0_P_self(7)
-1 member_0_device0_Pcons(7)
= 0

c_e_member_0_P_grid_con(8)_:
+1 P_exchange_0_0(8)
+1 member_0_P_grid_plus(8)
-1 member_0_P_grid_minus(8)
+1 member_0_P_self(8)
-1 member_0_device0_Pcons(8)
= 0

c_e_member_0_P_grid_con(9)_:
+1 P_exchange_0_0(9)
+1 member_0_P_grid_plus(9)
-1 member_0_P_grid_minus(9)
+1 member_0_P_self(9)
-1 member_0_device0_Pcons(9)
= 0

c_e_member_0_P_grid_con(10)_:
+1 P_exchange_0_0(10)
+1 member_0_P_grid_plus(10)
-1 member_0_P_grid_minus(10)
+1 member_0_P_self(10)
-1 member_0_device0_Pcons(10)
= 0

c_e_member_0_P_grid_con(11)_:
+1 P_exchange_0_0(11)
+1 member_0_P_grid_plus(11)
-1 member_0_P_grid_minus(11)
+1 member_0_P_self(11)
-1 member_0_device0_Pcons(11)
= 0

c_e_member_0_P_grid_con(12)_:
+1 P_exchange_0_0(12)
+1 member_0_P_grid_plus(12)
-1 member_0_P_grid_minus(12)
+1 member_0_P_self(12)
-1 member_0_device0_Pcons(12)
= 0

c_e_member_0_P_grid_con(13)_:
+1 P_exchange_0_0(13)
+1 member_0_P_grid_plus(13)
-1 member_0_P_grid_minus(13)
+1 member_0_P_self(13)
-1 member_0_device0_Pcons(13)
= 0

c_e_member_0_P_grid_con(14)_:
+1 P_exchange_0_0(14)
+1 member_0_P_grid_plus(14)
-1 member_0_P_grid_minus(14)
+1 member_0_P_self(14)
-1 member_0_device0_Pcons(14)
= 0

c_e_member_0_P_grid_con(15)_:
+1 P_exchange_0_0(15)
+1 member_0_P_grid_plus(15)
-1 member_0_P_grid_minus(15)
+1 member_0_P_self(15)
-1 member_0_device0_Pcons(15)
= 0

c_e_member_0_P_grid_con(16)_:
+1 P_exchange_0_0(16)
+1 member_0_P_grid_plus(16)
-1 member_0_P_grid_minus(16)
+1 member_0_P_self(16)
-1 member_0_device0_Pcons(16)
= 0

c_e_member_0_P_grid_con(17)_:
+1 P_exchange_0_0(17)
+1 member_0_P_grid_plus(17)
-1 member_0_P_grid_minus(17)
+1 member_0_P_self(17)
-1 member_0_device0_Pcons(17)
= 0

c_e_member_0_P_grid_con(18)_:
+1 P_exchange_0_0(18)
+1 member_0_P_grid_plus(18)
-1 member_0_P_grid_minus(18)
+1 member_0_P_self(18)
-1 member_0_device0_Pcons(18)
= 0

c_e_member_0_P_grid_con(19)_:
+1 P_exchange_0_0(19)
+1 member_0_P_grid_plus(19)
-1 member_0_P_grid_minus(19)
+1 member_0_P_self(19)
-1 member_0_device0_Pcons(19)
= 0

c_e_member_0_P_grid_con(20)_:
+1 P_exchange_0_0(20)
+1 member_0_P_grid_plus(20)
-1 member_0_P_grid_minus(20)
+1 member_0_P_self(20)
-1 member_0_device0_Pcons(20)
= 0

c_e_member_0_P_grid_con(21)_:
+1 P_exchange_0_0(21)
+1 member_0_P_grid_plus(21)
-1 member_0_P_grid_minus(21)
+1 member_0_P_self(21)
-1 member_0_device0_Pcons(21)
= 0

c_e_member_0_P_grid_con(22)_:
+1 P_exchange_0_0(22)
+1 member_0_P_grid_plus(22)
-1 member_0_P_grid_minus(22)
+1 member_0_P_self(22)
-1 member_0_device0_Pcons(22)
= 0

c_e_member_0_P_grid_con(23)_:
+1 P_exchange_0_0(23)
+1 member_0_P_grid_plus(23)
-1 member_0_P_grid_minus(23)
+1 member_0_P_self(23)
-1 member_0_device0_Pcons(23)
= 0

c_l_member_0_device0_p_con_l(0)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(1)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(2)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(3)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(4)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(5)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(6)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(7)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(8)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(9)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(10)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(11)_:
+0 ONE_VAR_CONSTANT
>= -100.0

c_l_member_0_device0_p_con_l(12)_:
+0 ONE_VAR_CONSTANT
>= -100.0

c_l_member_0_device0_p_con_l(13)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(14)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(15)_:
+0 ONE_VAR_CONSTANT
>= -100.0

c_l_member_0_device0_p_con_l(16)_:
+0 ONE_VAR_CONSTANT
>= -100.0

c_l_member_0_device0_p_con_l(17)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(18)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(19)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(20)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(21)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(22)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_l_member_0_device0_p_con_l(23)_:
+0 ONE_VAR_CONSTANT
>= -50.0

c_u_member_0_device0_p_con_u(0)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(1)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(2)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(3)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(4)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(5)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(6)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(7)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(8)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(9)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(10)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(11)_:
+0 ONE_VAR_CONSTANT
<= 100.0

c_u_member_0_device0_p_con_u(12)_:
+0 ONE_VAR_CONSTANT
<= 100.0

c_u_member_0_device0_p_con_u(13)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(14)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(15)_:
+0 ONE_VAR_CONSTANT
<= 100.0

c_u_member_0_device0_p_con_u(16)_:
+0 ONE_VAR_CONSTANT
<= 100.0

c_u_member_0_device0_p_con_u(17)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(18)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(19)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(20)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(21)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(22)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_u_member_0_device0_p_con_u(23)_:
+0 ONE_VAR_CONSTANT
<= 50.0

c_e_member_0_device0_pow_con(0)_:
+1 member_0_device0_Pcons(0)
= 2050.0

c_e_member_0_device0_pow_con(1)_:
+1 member_0_device0_Pcons(1)
= 2050.0

c_e_member_0_device0_pow_con(2)_:
+1 member_0_device0_Pcons(2)
= 2050.0

c_e_member_0_device0_pow_con(3)_:
+1 member_0_device0_Pcons(3)
= 2050.0

c_e_member_0_device0_pow_con(4)_:
+1 member_0_device0_Pcons(4)
= 2050.0

c_e_member_0_device0_pow_con(5)_:
+1 member_0_device0_Pcons(5)
= 2050.0

c_e_member_0_device0_pow_con(6)_:
+1 member_0_device0_Pcons(6)
= 2050.0

c_e_member_0_device0_pow_con(7)_:
+1 member_0_device0_Pcons(7)
= 2050.0

c_e_member_0_device0_pow_con(8)_:
+1 member_0_device0_Pcons(8)
= 2050.0

c_e_member_0_device0_pow_con(9)_:
+1 member_0_device0_Pcons(9)
= 1450.0

c_e_member_0_device0_pow_con(10)_:
+1 member_0_device0_Pcons(10)
= 1450.0

c_e_member_0_device0_pow_con(11)_:
+1 member_0_device0_Pcons(11)
= 1000.0

c_e_member_0_device0_pow_con(12)_:
+1 member_0_device0_Pcons(12)
= 1000.0

c_e_member_0_device0_pow_con(13)_:
+1 member_0_device0_Pcons(13)
= 1450.0

c_e_member_0_device0_pow_con(14)_:
+1 member_0_device0_Pcons(14)
= 1450.0

c_e_member_0_device0_pow_con(15)_:
+1 member_0_device0_Pcons(15)
= 1000.0

c_e_member_0_device0_pow_con(16)_:
+1 member_0_device0_Pcons(16)
= 1000.0

c_e_member_0_device0_pow_con(17)_:
+1 member_0_device0_Pcons(17)
= 1950.0

c_e_member_0_device0_pow_con(18)_:
+1 member_0_device0_Pcons(18)
= 1950.0

c_e_member_0_device0_pow_con(19)_:
+1 member_0_device0_Pcons(19)
= 1950.0

c_e_member_0_device0_pow_con(20)_:
+1 member_0_device0_Pcons(20)
= 1950.0

c_e_member_0_device0_pow_con(21)_:
+1 member_0_device0_Pcons(21)
= 1950.0

c_e_member_0_device0_pow_con(22)_:
+1 member_0_device0_Pcons(22)
= 1950.0

c_e_member_0_device0_pow_con(23)_:
+1 member_0_device0_Pcons(23)
= 1950.0

bounds
   1 <= ONE_VAR_CONSTANT <= 1
   0 <= P_exchange_0_0(0) <= +inf
   0 <= P_exchange_0_0(1) <= +inf
   0 <= P_exchange_0_0(2) <= +inf
   0 <= P_exchange_0_0(3) <= +inf
   0 <= P_exchange_0_0(4) <= +inf
   0 <= P_exchange_0_0(5) <= +inf
   0 <= P_exchange_0_0(6) <= +inf
   0 <= P_exchange_0_0(7) <= +inf
   0 <= P_exchange_0_0(8) <= +inf
   0 <= P_exchange_0_0(9) <= +inf
   0 <= P_exchange_0_0(10) <= +inf
   0 <= P_exchange_0_0(11) <= +inf
   0 <= P_exchange_0_0(12) <= +inf
   0 <= P_exchange_0_0(13) <= +inf
   0 <= P_exchange_0_0(14) <= +inf
   0 <= P_exchange_0_0(15) <= +inf
   0 <= P_exchange_0_0(16) <= +inf
   0 <= P_exchange_0_0(17) <= +inf
   0 <= P_exchange_0_0(18) <= +inf
   0 <= P_exchange_0_0(19) <= +inf
   0 <= P_exchange_0_0(20) <= +inf
   0 <= P_exchange_0_0(21) <= +inf
   0 <= P_exchange_0_0(22) <= +inf
   0 <= P_exchange_0_0(23) <= +inf
   0 <= member_0_P_grid_plus(0) <= +inf
   0 <= member_0_P_grid_plus(1) <= +inf
   0 <= member_0_P_grid_plus(2) <= +inf
   0 <= member_0_P_grid_plus(3) <= +inf
   0 <= member_0_P_grid_plus(4) <= +inf
   0 <= member_0_P_grid_plus(5) <= +inf
   0 <= member_0_P_grid_plus(6) <= +inf
   0 <= member_0_P_grid_plus(7) <= +inf
   0 <= member_0_P_grid_plus(8) <= +inf
   0 <= member_0_P_grid_plus(9) <= +inf
   0 <= member_0_P_grid_plus(10) <= +inf
   0 <= member_0_P_grid_plus(11) <= +inf
   0 <= member_0_P_grid_plus(12) <= +inf
   0 <= member_0_P_grid_plus(13) <= +inf
   0 <= member_0_P_grid_plus(14) <= +inf
   0 <= member_0_P_grid_plus(15) <= +inf
   0 <= member_0_P_grid_plus(16) <= +inf
   0 <= member_0_P_grid_plus(17) <= +inf
   0 <= member_0_P_grid_plus(18) <= +inf
   0 <= member_0_P_grid_plus(19) <= +inf
   0 <= member_0_P_grid_plus(20) <= +inf
   0 <= member_0_P_grid_plus(21) <= +inf
   0 <= member_0_P_grid_plus(22) <= +inf
   0 <= member_0_P_grid_plus(23) <= +inf
   0 <= member_0_P_grid_minus(0) <= +inf
   0 <= member_0_P_grid_minus(1) <= +inf
   0 <= member_0_P_grid_minus(2) <= +inf
   0 <= member_0_P_grid_minus(3) <= +inf
   0 <= member_0_P_grid_minus(4) <= +inf
   0 <= member_0_P_grid_minus(5) <= +inf
   0 <= member_0_P_grid_minus(6) <= +inf
   0 <= member_0_P_grid_minus(7) <= +inf
   0 <= member_0_P_grid_minus(8) <= +inf
   0 <= member_0_P_grid_minus(9) <= +inf
   0 <= member_0_P_grid_minus(10) <= +inf
   0 <= member_0_P_grid_minus(11) <= +inf
   0 <= member_0_P_grid_minus(12) <= +inf
   0 <= member_0_P_grid_minus(13) <= +inf
   0 <= member_0_P_grid_minus(14) <= +inf
   0 <= member_0_P_grid_minus(15) <= +inf
   0 <= member_0_P_grid_minus(16) <= +inf
   0 <= member_0_P_grid_minus(17) <= +inf
   0 <= member_0_P_grid_minus(18) <= +inf
   0 <= member_0_P_grid_minus(19) <= +inf
   0 <= member_0_P_grid_minus(20) <= +inf
   0 <= member_0_P_grid_minus(21) <= +inf
   0 <= member_0_P_grid_minus(22) <= +inf
   0 <= member_0_P_grid_minus(23) <= +inf
   0 <= member_0_P_self(0) <= +inf
   0 <= member_0_P_self(1) <= +inf
   0 <= member_0_P_self(2) <= +inf
   0 <= member_0_P_self(3) <= +inf
   0 <= member_0_P_self(4) <= +inf
   0 <= member_0_P_self(5) <= +inf
   0 <= member_0_P_self(6) <= +inf
   0 <= member_0_P_self(7) <= +inf
   0 <= member_0_P_self(8) <= +inf
   0 <= member_0_P_self(9) <= +inf
   0 <= member_0_P_self(10) <= +inf
   0 <= member_0_P_self(11) <= +inf
   0 <= member_0_P_self(12) <= +inf
   0 <= member_0_P_self(13) <= +inf
   0 <= member_0_P_self(14) <= +inf
   0 <= member_0_P_self(15) <= +inf
   0 <= member_0_P_self(16) <= +inf
   0 <= member_0_P_self(17) <= +inf
   0 <= member_0_P_self(18) <= +inf
   0 <= member_0_P_self(19) <= +inf
   0 <= member_0_P_self(20) <= +inf
   0 <= member_0_P_self(21) <= +inf
   0 <= member_0_P_self(22) <= +inf
   0 <= member_0_P_self(23) <= +inf
   0 <= member_0_P_surplus(0) <= +inf
   0 <= member_0_P_surplus(1) <= +inf
   0 <= member_0_P_surplus(2) <= +inf
   0 <= member_0_P_surplus(3) <= +inf
   0 <= member_0_P_surplus(4) <= +inf
   0 <= member_0_P_surplus(5) <= +inf
   0 <= member_0_P_surplus(6) <= +inf
   0 <= member_0_P_surplus(7) <= +inf
   0 <= member_0_P_surplus(8) <= +inf
   0 <= member_0_P_surplus(9) <= +inf
   0 <= member_0_P_surplus(10) <= +inf
   0 <= member_0_P_surplus(11) <= +inf
   0 <= member_0_P_surplus(12) <= +inf
   0 <= member_0_P_surplus(13) <= +inf
   0 <= member_0_P_surplus(14) <= +inf
   0 <= member_0_P_surplus(15) <= +inf
   0 <= member_0_P_surplus(16) <= +inf
   0 <= member_0_P_surplus(17) <= +inf
   0 <= member_0_P_surplus(18) <= +inf
   0 <= member_0_P_surplus(19) <= +inf
   0 <= member_0_P_surplus(20) <= +inf
   0 <= member_0_P_surplus(21) <= +inf
   0 <= member_0_P_surplus(22) <= +inf
   0 <= member_0_P_surplus(23) <= +inf
   -inf <= member_0_device0_Pcons(0) <= +inf
   -inf <= member_0_device0_Pcons(1) <= +inf
   -inf <= member_0_device0_Pcons(2) <= +inf
   -inf <= member_0_device0_Pcons(3) <= +inf
   -inf <= member_0_device0_Pcons(4) <= +inf
   -inf <= member_0_device0_Pcons(5) <= +inf
   -inf <= member_0_device0_Pcons(6) <= +inf
   -inf <= member_0_device0_Pcons(7) <= +inf
   -inf <= member_0_device0_Pcons(8) <= +inf
   -inf <= member_0_device0_Pcons(9) <= +inf
   -inf <= member_0_device0_Pcons(10) <= +inf
   -inf <= member_0_device0_Pcons(11) <= +inf
   -inf <= member_0_device0_Pcons(12) <= +inf
   -inf <= member_0_device0_Pcons(13) <= +inf
   -inf <= member_0_device0_Pcons(14) <= +inf
   -inf <= member_0_device0_Pcons(15) <= +inf
   -inf <= member_0_device0_Pcons(16) <= +inf
   -inf <= member_0_device0_Pcons(17) <= +inf
   -inf <= member_0_device0_Pcons(18) <= +inf
   -inf <= member_0_device0_Pcons(19) <= +inf
   -inf <= member_0_device0_Pcons(20) <= +inf
   -inf <= member_0_device0_Pcons(21) <= +inf
   -inf <= member_0_device0_Pcons(22) <= +inf
   -inf <= member_0_device0_Pcons(23) <= +inf
end
