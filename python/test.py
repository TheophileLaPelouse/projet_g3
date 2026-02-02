import sys

sys.path.append("/Users/theophilemounier/Desktop/git/projet_g3/python")

#%% test de device.py

import commu_opti.community.device as d

power_range = [[10, 20], [-10, 10]]
time_use = [[1, 2], [3, 4]]
time_range = [[-1, 1], [-2, 2]]
dev = d.device(power_range, time_use, time_range)
dev.mod.p_con_l.pprint()
dev.mod.p_con_u.pprint()
dev.mod.t_con_l.pprint()
dev.mod.t_con_u.pprint()


#%% test de membre.py

import commu_opti.community.member as member


#%% test autres

import pyomo.environ as pyo
from pyomo.opt import SolverFactory
# from pyomo.contrib.appsi.solvers import Gurobi

mod1 = pyo.ConcreteModel()
mod2 = pyo.ConcreteModel()

mod1.x1 = pyo.Var() 

# Define the variables
mod1.x = pyo.Var(domain=pyo.NonNegativeReals)
mod1.y = pyo.Var(domain=pyo.NonNegativeReals)

# Define the objective function
mod1.obj = pyo.Objective(expr=2*mod1.x + 3*mod1.y, sense=pyo.maximize)

# Define the constraints
mod1.constraint1 = pyo.Constraint(expr=mod1.x + mod1.y <= 4)
mod1.constraint2 = pyo.Constraint(expr=2*mod1.x + mod1.y <= 5)

mod2.mod1 = mod1
mod2.mod1.obj.deactivate()

mod2.obj = pyo.Objective(expr=2*mod2.mod1.x + 3*mod2.mod1.y, sense=pyo.maximize)

# mod2.x = mod1.x
# mod2.x = mod1.x
# mod2.obj = mod1.obj
# mod2.constraint1=mod1.constraint1
# mod2.constraint1=mod1.constraint2

# Solve the mod1 using Gurobi
solver = SolverFactory('gurobi', solver_io="direct")
# solver = Gurobi()
# opt = pyo.SolverFactory("guro\bi", )
solver.solve(mod2)

# Print the results
print('x =', mod1.x())
print('y =', mod1.y())
print('Objective =', mod1.obj())