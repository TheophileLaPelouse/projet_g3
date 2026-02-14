\* Source Pyomo model name=unknown *\

min 
obj:
+3.75e-06 P_grid_plus(0)
+3.75e-06 P_grid_plus(1)
+3.75e-06 P_grid_plus(2)
+3.75e-06 P_grid_plus(3)
+3.75e-06 P_grid_plus(4)
+3.75e-06 P_grid_plus(5)
+3.75e-06 P_grid_plus(6)
+3.75e-06 P_grid_plus(7)
+3.75e-06 P_grid_plus(8)
+3.75e-06 P_grid_plus(9)
+3.75e-06 P_grid_plus(10)
+3.75e-06 P_grid_plus(11)
+3.75e-06 P_grid_plus(12)
+3.75e-06 P_grid_plus(13)
+3.75e-06 P_grid_plus(14)
+3.75e-06 P_grid_plus(15)
+3.75e-06 P_grid_plus(16)
+3.75e-06 P_grid_plus(17)
+3.75e-06 P_grid_plus(18)
+3.75e-06 P_grid_plus(19)
+3.75e-06 P_grid_plus(20)
+3.75e-06 P_grid_plus(21)
+3.75e-06 P_grid_plus(22)
+3.75e-06 P_grid_plus(23)
-1.875e-06 P_grid_minus(0)
-1.875e-06 P_grid_minus(1)
-1.875e-06 P_grid_minus(2)
-1.875e-06 P_grid_minus(3)
-1.875e-06 P_grid_minus(4)
-1.875e-06 P_grid_minus(5)
-1.875e-06 P_grid_minus(6)
-1.875e-06 P_grid_minus(7)
-1.875e-06 P_grid_minus(8)
-1.875e-06 P_grid_minus(9)
-1.875e-06 P_grid_minus(10)
-1.875e-06 P_grid_minus(11)
-1.875e-06 P_grid_minus(12)
-1.875e-06 P_grid_minus(13)
-1.875e-06 P_grid_minus(14)
-1.875e-06 P_grid_minus(15)
-1.875e-06 P_grid_minus(16)
-1.875e-06 P_grid_minus(17)
-1.875e-06 P_grid_minus(18)
-1.875e-06 P_grid_minus(19)
-1.875e-06 P_grid_minus(20)
-1.875e-06 P_grid_minus(21)
-1.875e-06 P_grid_minus(22)
-1.875e-06 P_grid_minus(23)
+24 device0_starting_time_plus_0
+24 device0_starting_time_minus_0

s.t.

c_e_P_prod_con(0)_:
+1 P_self(0)
= 0

c_e_P_prod_con(1)_:
+1 P_self(1)
= 0

c_e_P_prod_con(2)_:
+1 P_self(2)
= 0

c_e_P_prod_con(3)_:
+1 P_self(3)
= 0

c_e_P_prod_con(4)_:
+1 P_self(4)
= 0

c_e_P_prod_con(5)_:
+1 P_self(5)
= 0

c_e_P_prod_con(6)_:
+1 P_self(6)
= 0

c_e_P_prod_con(7)_:
+1 P_self(7)
= 0

c_e_P_prod_con(8)_:
+1 P_self(8)
= 0

c_e_P_prod_con(9)_:
+1 P_self(9)
= 0

c_e_P_prod_con(10)_:
+1 P_self(10)
= 0

c_e_P_prod_con(11)_:
+1 P_self(11)
= 0

c_e_P_prod_con(12)_:
+1 P_self(12)
= 0

c_e_P_prod_con(13)_:
+1 P_self(13)
= 0

c_e_P_prod_con(14)_:
+1 P_self(14)
= 0

c_e_P_prod_con(15)_:
+1 P_self(15)
= 0

c_e_P_prod_con(16)_:
+1 P_self(16)
= 0

c_e_P_prod_con(17)_:
+1 P_self(17)
= 0

c_e_P_prod_con(18)_:
+1 P_self(18)
= 0

c_e_P_prod_con(19)_:
+1 P_self(19)
= 0

c_e_P_prod_con(20)_:
+1 P_self(20)
= 0

c_e_P_prod_con(21)_:
+1 P_self(21)
= 0

c_e_P_prod_con(22)_:
+1 P_self(22)
= 0

c_e_P_prod_con(23)_:
+1 P_self(23)
= 0

c_e_P_grid_con(0)_:
+1 P_grid_plus(0)
-1 P_grid_minus(0)
+1 P_self(0)
-1 device0_Pcons(0)
= 0

c_e_P_grid_con(1)_:
+1 P_grid_plus(1)
-1 P_grid_minus(1)
+1 P_self(1)
-1 device0_Pcons(1)
= 0

c_e_P_grid_con(2)_:
+1 P_grid_plus(2)
-1 P_grid_minus(2)
+1 P_self(2)
-1 device0_Pcons(2)
= 0

c_e_P_grid_con(3)_:
+1 P_grid_plus(3)
-1 P_grid_minus(3)
+1 P_self(3)
-1 device0_Pcons(3)
= 0

c_e_P_grid_con(4)_:
+1 P_grid_plus(4)
-1 P_grid_minus(4)
+1 P_self(4)
-1 device0_Pcons(4)
= 0

c_e_P_grid_con(5)_:
+1 P_grid_plus(5)
-1 P_grid_minus(5)
+1 P_self(5)
-1 device0_Pcons(5)
= 0

c_e_P_grid_con(6)_:
+1 P_grid_plus(6)
-1 P_grid_minus(6)
+1 P_self(6)
-1 device0_Pcons(6)
= 0

c_e_P_grid_con(7)_:
+1 P_grid_plus(7)
-1 P_grid_minus(7)
+1 P_self(7)
-1 device0_Pcons(7)
= 0

c_e_P_grid_con(8)_:
+1 P_grid_plus(8)
-1 P_grid_minus(8)
+1 P_self(8)
-1 device0_Pcons(8)
= 0

c_e_P_grid_con(9)_:
+1 P_grid_plus(9)
-1 P_grid_minus(9)
+1 P_self(9)
-1 device0_Pcons(9)
= 0

c_e_P_grid_con(10)_:
+1 P_grid_plus(10)
-1 P_grid_minus(10)
+1 P_self(10)
-1 device0_Pcons(10)
= 0

c_e_P_grid_con(11)_:
+1 P_grid_plus(11)
-1 P_grid_minus(11)
+1 P_self(11)
-1 device0_Pcons(11)
= 0

c_e_P_grid_con(12)_:
+1 P_grid_plus(12)
-1 P_grid_minus(12)
+1 P_self(12)
-1 device0_Pcons(12)
= 0

c_e_P_grid_con(13)_:
+1 P_grid_plus(13)
-1 P_grid_minus(13)
+1 P_self(13)
-1 device0_Pcons(13)
= 0

c_e_P_grid_con(14)_:
+1 P_grid_plus(14)
-1 P_grid_minus(14)
+1 P_self(14)
-1 device0_Pcons(14)
= 0

c_e_P_grid_con(15)_:
+1 P_grid_plus(15)
-1 P_grid_minus(15)
+1 P_self(15)
-1 device0_Pcons(15)
= 0

c_e_P_grid_con(16)_:
+1 P_grid_plus(16)
-1 P_grid_minus(16)
+1 P_self(16)
-1 device0_Pcons(16)
= 0

c_e_P_grid_con(17)_:
+1 P_grid_plus(17)
-1 P_grid_minus(17)
+1 P_self(17)
-1 device0_Pcons(17)
= 0

c_e_P_grid_con(18)_:
+1 P_grid_plus(18)
-1 P_grid_minus(18)
+1 P_self(18)
-1 device0_Pcons(18)
= 0

c_e_P_grid_con(19)_:
+1 P_grid_plus(19)
-1 P_grid_minus(19)
+1 P_self(19)
-1 device0_Pcons(19)
= 0

c_e_P_grid_con(20)_:
+1 P_grid_plus(20)
-1 P_grid_minus(20)
+1 P_self(20)
-1 device0_Pcons(20)
= 0

c_e_P_grid_con(21)_:
+1 P_grid_plus(21)
-1 P_grid_minus(21)
+1 P_self(21)
-1 device0_Pcons(21)
= 0

c_e_P_grid_con(22)_:
+1 P_grid_plus(22)
-1 P_grid_minus(22)
+1 P_self(22)
-1 device0_Pcons(22)
= 0

c_e_P_grid_con(23)_:
+1 P_grid_plus(23)
-1 P_grid_minus(23)
+1 P_self(23)
-1 device0_Pcons(23)
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
+1 device0_bin_0(6)
+1 device0_bin_0(7)
= 1

c_u_device0_starttime_con_plus_0_:
-1 device0_starting_time_plus_0
+7 device0_bin_0(6)
+8 device0_bin_0(7)
<= 7

c_u_device0_starttime_con_minus_0_:
-1 device0_starting_time_minus_0
-7 device0_bin_0(6)
-8 device0_bin_0(7)
<= -7

c_e_device0_bin_p_con_0(0)_:
+1 device0_Pcons(0)
= 0

c_e_device0_bin_p_con_0(1)_:
+1 device0_Pcons(1)
= 0

c_e_device0_bin_p_con_0(2)_:
+1 device0_Pcons(2)
= 0

c_e_device0_bin_p_con_0(3)_:
+1 device0_Pcons(3)
= 0

c_e_device0_bin_p_con_0(4)_:
+1 device0_Pcons(4)
= 0

c_e_device0_bin_p_con_0(5)_:
+1 device0_Pcons(5)
= 0

c_e_device0_bin_p_con_0(6)_:
+1 device0_Pcons(6)
= 0

c_e_device0_bin_p_con_0(7)_:
+1 device0_Pcons(7)
-666.6666666666666 device0_bin_0(6)
= 0

c_e_device0_bin_p_con_0(8)_:
+1 device0_Pcons(8)
-666.6666666666666 device0_bin_0(6)
-666.6666666666666 device0_bin_0(7)
= 0

c_e_device0_bin_p_con_0(9)_:
+1 device0_Pcons(9)
-666.6666666666666 device0_bin_0(6)
-666.6666666666666 device0_bin_0(7)
= 0

c_e_device0_bin_p_con_0(10)_:
+1 device0_Pcons(10)
-666.6666666666666 device0_bin_0(6)
-666.6666666666666 device0_bin_0(7)
= 0

c_e_device0_bin_p_con_0(11)_:
+1 device0_Pcons(11)
-666.6666666666666 device0_bin_0(7)
= 0

c_e_device0_bin_p_con_0(12)_:
+1 device0_Pcons(12)
= 0

c_e_device0_bin_p_con_0(13)_:
+1 device0_Pcons(13)
= 0

c_e_device0_bin_p_con_0(14)_:
+1 device0_Pcons(14)
= 0

c_e_device0_bin_p_con_0(15)_:
+1 device0_Pcons(15)
= 0

c_e_device0_bin_p_con_0(16)_:
+1 device0_Pcons(16)
= 0

c_e_device0_bin_p_con_0(17)_:
+1 device0_Pcons(17)
= 0

c_e_device0_bin_p_con_0(18)_:
+1 device0_Pcons(18)
= 0

c_e_device0_bin_p_con_0(19)_:
+1 device0_Pcons(19)
= 0

c_e_device0_bin_p_con_0(20)_:
+1 device0_Pcons(20)
= 0

c_e_device0_bin_p_con_0(21)_:
+1 device0_Pcons(21)
= 0

c_e_device0_bin_p_con_0(22)_:
+1 device0_Pcons(22)
= 0

c_e_device0_bin_p_con_0(23)_:
+1 device0_Pcons(23)
= 0

bounds
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
   0 <= device0_starting_time_plus_0 <= +inf
   0 <= device0_starting_time_minus_0 <= +inf
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
   0 <= device0_bin_0(6) <= 1
   0 <= device0_bin_0(7) <= 1
binary
  device0_bin_0(6)
  device0_bin_0(7)
end
