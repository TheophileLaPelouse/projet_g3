\* Source Pyomo model name=unknown *\

min 
obj:
+0.051238095238095235 member_1_P_grid_plus(0)
+0.051238095238095235 member_1_P_grid_plus(1)
+0.051238095238095235 member_1_P_grid_plus(2)
+0.051238095238095235 member_1_P_grid_plus(3)
+0.051238095238095235 member_1_P_grid_plus(4)
+0.014285714285714285 P_exchange_1_1(0)
+0.014285714285714285 P_exchange_1_1(1)
+0.014285714285714285 P_exchange_1_1(2)
+0.014285714285714285 P_exchange_1_1(3)
+0.014285714285714285 P_exchange_1_1(4)
-0.0013333333333333333 member_1_P_grid_minus(0)
-0.0013333333333333333 member_1_P_grid_minus(1)
-0.0013333333333333333 member_1_P_grid_minus(2)
-0.0013333333333333333 member_1_P_grid_minus(3)
-0.0013333333333333333 member_1_P_grid_minus(4)
+0.014285714285714285 member_1_P_self(0)
+0.014285714285714285 member_1_P_self(1)
+0.014285714285714285 member_1_P_self(2)
+0.014285714285714285 member_1_P_self(3)
+0.014285714285714285 member_1_P_self(4)

s.t.

c_e_surplus_only(0_1)_:
+1 P_exchange_1_1(0)
-1 member_1_P_surplus(0)
= 0

c_e_surplus_only(1_1)_:
+1 P_exchange_1_1(1)
-1 member_1_P_surplus(1)
= 0

c_e_surplus_only(2_1)_:
+1 P_exchange_1_1(2)
-1 member_1_P_surplus(2)
= 0

c_e_surplus_only(3_1)_:
+1 P_exchange_1_1(3)
-1 member_1_P_surplus(3)
= 0

c_e_surplus_only(4_1)_:
+1 P_exchange_1_1(4)
-1 member_1_P_surplus(4)
= 0

c_e_ii_rule(0_1)_:
+1 P_exchange_1_1(0)
= 0

c_e_ii_rule(1_1)_:
+1 P_exchange_1_1(1)
= 0

c_e_ii_rule(2_1)_:
+1 P_exchange_1_1(2)
= 0

c_e_ii_rule(3_1)_:
+1 P_exchange_1_1(3)
= 0

c_e_ii_rule(4_1)_:
+1 P_exchange_1_1(4)
= 0

c_e_member_1_P_prod_con(0)_:
+1 member_1_P_self(0)
+1 member_1_P_surplus(0)
= 0

c_e_member_1_P_prod_con(1)_:
+1 member_1_P_self(1)
+1 member_1_P_surplus(1)
= 0

c_e_member_1_P_prod_con(2)_:
+1 member_1_P_self(2)
+1 member_1_P_surplus(2)
= 0

c_e_member_1_P_prod_con(3)_:
+1 member_1_P_self(3)
+1 member_1_P_surplus(3)
= 0

c_e_member_1_P_prod_con(4)_:
+1 member_1_P_self(4)
+1 member_1_P_surplus(4)
= 0

c_e_member_1_P_grid_con(0)_:
+1 member_1_P_grid_plus(0)
+1 P_exchange_1_1(0)
-1 member_1_P_grid_minus(0)
+1 member_1_P_self(0)
-1 member_1_device0_Pcons(0)
= 0

c_e_member_1_P_grid_con(1)_:
+1 member_1_P_grid_plus(1)
+1 P_exchange_1_1(1)
-1 member_1_P_grid_minus(1)
+1 member_1_P_self(1)
-1 member_1_device0_Pcons(1)
= 0

c_e_member_1_P_grid_con(2)_:
+1 member_1_P_grid_plus(2)
+1 P_exchange_1_1(2)
-1 member_1_P_grid_minus(2)
+1 member_1_P_self(2)
-1 member_1_device0_Pcons(2)
= 0

c_e_member_1_P_grid_con(3)_:
+1 member_1_P_grid_plus(3)
+1 P_exchange_1_1(3)
-1 member_1_P_grid_minus(3)
+1 member_1_P_self(3)
-1 member_1_device0_Pcons(3)
= 0

c_e_member_1_P_grid_con(4)_:
+1 member_1_P_grid_plus(4)
+1 P_exchange_1_1(4)
-1 member_1_P_grid_minus(4)
+1 member_1_P_self(4)
-1 member_1_device0_Pcons(4)
= 0

c_l_member_1_device0_p_con_l(0)_:
+1 member_1_device0_allocated_power(0)
>= 10

c_u_member_1_device0_p_con_u(0)_:
+1 member_1_device0_allocated_power(0)
<= 10

c_e_member_1_device0_p_excess_total_l(0)_:
+1 member_1_device0_p_excess_l_all(0)
= 0

c_e_member_1_device0_p_excess_total_l(1)_:
+1 member_1_device0_p_excess_l_all(1)
= 0

c_e_member_1_device0_p_excess_total_l(2)_:
+1 member_1_device0_p_excess_l_all(2)
= 0

c_e_member_1_device0_p_excess_total_l(3)_:
+1 member_1_device0_p_excess_l_all(3)
= 0

c_e_member_1_device0_p_excess_total_l(4)_:
+1 member_1_device0_p_excess_l_all(4)
= 0

c_e_member_1_device0_p_excess_total_u(0)_:
+1 member_1_device0_p_excess_u_all(0)
= 0

c_e_member_1_device0_p_excess_total_u(1)_:
+1 member_1_device0_p_excess_u_all(1)
= 0

c_e_member_1_device0_p_excess_total_u(2)_:
+1 member_1_device0_p_excess_u_all(2)
= 0

c_e_member_1_device0_p_excess_total_u(3)_:
+1 member_1_device0_p_excess_u_all(3)
= 0

c_e_member_1_device0_p_excess_total_u(4)_:
+1 member_1_device0_p_excess_u_all(4)
= 0

c_e_member_1_device0_pow_con(0)_:
+1 member_1_device0_Pcons(0)
= 10

c_e_member_1_device0_pow_con(1)_:
+1 member_1_device0_Pcons(1)
= 10

c_e_member_1_device0_pow_con(2)_:
+1 member_1_device0_Pcons(2)
= 10

c_e_member_1_device0_pow_con(3)_:
+1 member_1_device0_Pcons(3)
= 10

c_e_member_1_device0_pow_con(4)_:
+1 member_1_device0_Pcons(4)
= 10

bounds
   0 <= member_1_P_grid_plus(0) <= +inf
   0 <= member_1_P_grid_plus(1) <= +inf
   0 <= member_1_P_grid_plus(2) <= +inf
   0 <= member_1_P_grid_plus(3) <= +inf
   0 <= member_1_P_grid_plus(4) <= +inf
   0 <= P_exchange_1_1(0) <= +inf
   0 <= P_exchange_1_1(1) <= +inf
   0 <= P_exchange_1_1(2) <= +inf
   0 <= P_exchange_1_1(3) <= +inf
   0 <= P_exchange_1_1(4) <= +inf
   0 <= member_1_P_grid_minus(0) <= +inf
   0 <= member_1_P_grid_minus(1) <= +inf
   0 <= member_1_P_grid_minus(2) <= +inf
   0 <= member_1_P_grid_minus(3) <= +inf
   0 <= member_1_P_grid_minus(4) <= +inf
   0 <= member_1_P_self(0) <= +inf
   0 <= member_1_P_self(1) <= +inf
   0 <= member_1_P_self(2) <= +inf
   0 <= member_1_P_self(3) <= +inf
   0 <= member_1_P_self(4) <= +inf
   0 <= member_1_P_surplus(0) <= +inf
   0 <= member_1_P_surplus(1) <= +inf
   0 <= member_1_P_surplus(2) <= +inf
   0 <= member_1_P_surplus(3) <= +inf
   0 <= member_1_P_surplus(4) <= +inf
   -inf <= member_1_device0_Pcons(0) <= +inf
   -inf <= member_1_device0_Pcons(1) <= +inf
   -inf <= member_1_device0_Pcons(2) <= +inf
   -inf <= member_1_device0_Pcons(3) <= +inf
   -inf <= member_1_device0_Pcons(4) <= +inf
   -inf <= member_1_device0_allocated_power(0) <= +inf
   0 <= member_1_device0_p_excess_l_all(0) <= +inf
   0 <= member_1_device0_p_excess_l_all(1) <= +inf
   0 <= member_1_device0_p_excess_l_all(2) <= +inf
   0 <= member_1_device0_p_excess_l_all(3) <= +inf
   0 <= member_1_device0_p_excess_l_all(4) <= +inf
   0 <= member_1_device0_p_excess_u_all(0) <= +inf
   0 <= member_1_device0_p_excess_u_all(1) <= +inf
   0 <= member_1_device0_p_excess_u_all(2) <= +inf
   0 <= member_1_device0_p_excess_u_all(3) <= +inf
   0 <= member_1_device0_p_excess_u_all(4) <= +inf
end
