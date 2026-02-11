import sys
sys.path.append("/Users/theophilemounier/Desktop/git/projet_g3/python")

import pyomo.environ as pyo
from pyomo.opt import SolverFactory

#%% test de device.py

# import commu_opti.community.device as d


# power_range = [[10, 20], [-10, 10]]
# time_use = [[1, 2], [3, 4]]
# time_range = [[-1, 1], [-2, 2]]
# dev = d.device(power_range, time_use, time_range)
# dev.mod.p_con_l.pprint()
# dev.mod.p_con_u.pprint()
# dev.mod.t_con_l.pprint()
# dev.mod.t_con_u.pprint()


#%% test de membre.py
import commu_opti.community.device as d
import commu_opti.community.community as comm

prod_profile = [0, 0, 0, 0, 0, 0, 0, 0, 30, 30, 30, 30, 30, 30, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0]
# prod_profile = [30 for k in range(24)]
# Objets
# machine à laver 

options = {"total_time" : 24, "deltat" : 1}
wash_mach = {'cycle_length' : [6], 
             'power_needed' : [3], 
             "start_pref" : [18], 
             "time_range" : [[-24, 24]], 
             }

device_wash_mach = d.white_good(**wash_mach, **options)

print("\nWASHING MACHINE DEFINED\n")

# réfrigérateur

therm_load = {
    "power_range" : [[8, 9] for k in range(options["total_time"])], 
}

device_therm = d.flex(**therm_load, **options)

print("\nTHERMAL LOAD DEFINED\n")

# EV

EV_load = {
    "p_range" : [-5, 5], 
    "E_range" : [0, 60],
    "time_home" : [[0, 4], [8, 24]], 
    "E0s" : [30, 10],
    "E_min" : [40, 0], 
    "E_end" : 20
}

device_EV = d.EV(**EV_load)

print("\nEV DEFINED\n")

# Fixed profile

fixed_load = {
    "power_profile" : [5 for t in range(options["total_time"])]
}

fixed_load_device = d.fixed(**fixed_load, **options)

print("\nFIXED DEFINED\n")

def define_devices(wash_mach, therm_load, EV_load, fixed_load, options) :
    device_wash_mach = d.white_good(**wash_mach, **options)
    device_therm = d.flex(**therm_load, **options)
    device_EV = d.EV(**EV_load)
    device_fixed = d.fixed(**fixed_load, **options)
    
    return device_wash_mach, device_therm, device_EV, device_fixed





community = comm.community([])

import commu_opti.community.member as memb
# Create dictionaries for different test cases
test_cases = {
    # "wash_machine": {
    #     "name": "wash_test",
    #     "devices": [],
    #     "community": community,
    #     "prod_profile" : prod_profile, 
    #     "socio" : [1, 0, 0, 0.01], 
    #     "id" : 1
    # },
    # "thermostat": {
    #     "name": "therm_test",
    #     "devices": [],
    #     "community": community,
    #     "prod_profile" : prod_profile, 
    #     "socio" : [1, 0, 0, 100], 
    #     "id" : 1
    # },
    # "EV": {
    #     "name": "EV_test",
    #     "devices": [],
    #     "community": community,
    #     "prod_profile" : prod_profile, 
    #     "socio" : [1, 0, 0, 1], 
    #     "id" : 1
    # },
    # "fixed_profile": {
    #     "name": "fixed_profile_test",
    #     "devices": [],
    #     "community": community,
    #     "prod_profile" : prod_profile, 
    #     "socio" : [1, 0, 0, 1], 
    #     "id" : 1
    # },
    "all_devices": {
        "name": "all_test",
        "devices": [],
        "community": community,
        "prod_profile" : prod_profile, 
        "socio" : [1, 1, 1, 1], 
        "id" : 1
    },
    }

member_options = {
    "eco" : {
        "cost_grid_buy" : 10, 
        "cost_grid_sell" : 0,
        "cost_ex" : 0, 
    },
    "enviro" : {
        "carbone_grid" : 15,
        "carbone_commu" : 0.1
    },
    "auto" : {
        "coef_auto" : 1
    },
    "pena" : {
        "coef_pena" : 1
    }, 
    "confort" : {
        "coef_p" : 1, 
        "coef_t" : 1
    },
    "bat_exchange" : True,
}


# Run tests from dictionaries
for case_name, case_params in test_cases.items():
    print(f"{case_name} test")
    device_wash_mach, device_therm, device_EV, device_fixed = define_devices(wash_mach, therm_load, EV_load, fixed_load,options)
    
    if case_name=="wash_machine" : 
        case_params['devices'] = [device_wash_mach]
    elif case_name=="thermostat" :
        case_params['devices'] = [device_therm]
    elif case_name=="EV" :
        case_params['devices'] = [device_EV]
    elif case_name=="all_devices" :
        case_params['devices'] = []
        case_params['devices'].append(device_wash_mach)
        case_params['devices'].append(device_therm)
        case_params['devices'].append(device_EV)
    elif case_name=="fixed_profile" :
        case_params['devices'] = [device_fixed]

    
    test_member = memb.member(case_params['devices'], 
                              case_params['prod_profile'], 
                              case_params['socio'],  
                              case_params['id'], **member_options)
    # community = comm.community([test_member])
    test_member.build_model(**test_member.kwargs)
    test_member.self_optimize("gurobi")
    device = test_member.devices[0]
    # test_member.mod_member.P_bat.display()
    # test_member.devices[0].mod.bin_0.display()
    # test_member.mod_member.P_grid_minus.display()
    # test_member.mod_member.obj.pprint()
    print(f"{case_name} test solved")
    print(f"Results : price = {pyo.value(test_member.price)}, enviro = {pyo.value(test_member.enviro)}, auto = {pyo.value(test_member.auto)}, confort = {pyo.value(test_member.confort)}")
    test_member.mod_member.write('member.lp', io_options={'symbolic_solver_labels': True})
    
to_plot = {
    "powers" : {
        "P_grid" : [pyo.value(test_member.P_grid_plus[t]-test_member.P_grid_minus[t]) for t in range(test_member.total_time)],
        "P_bat" : [pyo.value(test_member.P_bat[t]) for t in range(test_member.total_time)],
        "P_cons" : [pyo.value(test_member.P_cons[t]) for t in range(test_member.total_time)], 
        "P_exchange" : [pyo.value(test_member.P_exchange[t]) for t in range(test_member.total_time)],
        "P_prod" : prod_profile
    }
}
    
test_member.plot_power_curves(**to_plot)

#%% Community test 

import commu_opti.community.device as d
import commu_opti.community.community as comm
import commu_opti.community.member as memb

options = {"total_time" : 5, "deltat" : 1}

members_dico = {
    "member1" : {
        "power_profile" : [20 for t in range(5)], 
        "devices" : [
            {
                "type" : "fixed", 
                "parameters" : {
                    "power_profile" : [10 for t in range(options["total_time"])]
                }
            }
        ],
        "socio" : [1, 1, 1, 1],
        "id" : 1
    }, 
    "member2" : {
        "power_profile" : [0 for t in range(5)], 
        "devices" : [
            {
                "type" : "fixed", 
                "parameters" : {
                    "power_profile" : [10 for t in range(options["total_time"])]
                }
            }
        ],
        "socio" : [1, 1, 1, 1],
        "id" : 2
    },
    # "member3" : {
    #     "power_profile" : [0 for t in range(5)], 
    #     "devices" : [
    #         {
    #             "type" : "fixed", 
    #             "parameters" : {
    #                 "power_profile" : [10 for t in range(options["total_time"])]
    #             }
    #         }
    #     ],
    #     "socio" : [1, 1, 1, 1],
    #     "id" : 2
    # }
}

coef_options = {
    "eco" : {
        "cost_grid_buy" : 10, 
        "cost_grid_sell" : -2.5,
        "cost_ex" : 0, 
    },
    "enviro" : {
        "carbone_grid" : 0.5,
        "carbone_commu" : 0.1
    },
    "auto" : {
        "coef_auto" : 1
    },
    "pena" : {
        "coef_pena" : 1
    }
}


members = []
co = None
c = 0
for key in members_dico : 
    m = members_dico[key]
    devices = []
    for device in m["devices"] : 
        devices.append(getattr(d, device["type"])(**device["parameters"], **options))
    member = memb.member(devices, m["power_profile"], m["socio"], m["id"], calc_ref = False, **options)
    members.append(member)
    c += 1
co = comm.community(members, **options, **coef_options)
# co.build_model()
co.optimize("gurobi")
co.mod.write('commu.lp', io_options={'symbolic_solver_labels': True})

print("Optimization done \n")

# co.calc_gains("gurobi")
# print("Gains calculated \n")

# co.distribute_gains(method="proportional")
# print("Gains distributed proportionaly \n")

# co.distribute_gains(method="equal")
# print("Gains distributed equally \n")

# co.distribute_gains(method="shapley")
# print("Gains distributed with Shapley \n")


to_plot = {
    "powers" : {
        "P_grid" : [pyo.value(co.mod.P_grid_plus[t]+co.mod.P_grid_minus[t]) for t in range(co.total_time)],
        "P_bat" : [pyo.value(co.mod.P_bat[t]) for t in range(co.total_time)],
        "P_cons" : [pyo.value(co.mod.P_cons[t]) for t in range(co.total_time)], 
        "P_exchange" : [pyo.value(co.mod.P_commu_exchange[t]) for t in range(co.total_time)],
    }
}
    
co.plot_power_curves(**to_plot)
        
# to_plot_hex = {
#     "values" : {
#         "gain shapley" : co.members_gains["shapley"],
#         "gain proportional" : co.members_gains["proportional"],
#         "gain equal" : co.members_gains["equal"],
#     },
#     "members" : [f"member {m}" for m in co.members_id],
#     "title" : "Gains distribution comparison"
# }
# co.plot_hexagon(**to_plot_hex)

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