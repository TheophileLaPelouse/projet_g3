import json, os
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

import sys
sys.path.append("/Users/theophilemounier/Desktop/git/projet_g3/python")

import pyomo.environ as pyo
from pyomo.opt import SolverFactory


from commu_opti.data.generate_data import generate_n_profile, create_random_agent, detailed_profile
from commu_opti.commu_builder import define_members, define_community

#%%

candidate_folder = os.path.join(os.path.dirname(__file__), "../../projet_g3_data/candidates")

members_params = []
for file in os.listdir(candidate_folder) : 
    if file.endswith(".json") : 
        with open(os.path.join(candidate_folder, file), "r") as fp : 
            data = json.load(fp)
            devices = data["devices"]
            parameters = data["parameters"]
            parameters["bat_exchange"] = True
            parameters["name"] = file[9:-5]
            param = {"devices" : devices, "device_options" : {"total_time" : 24, "deltat" : 1}, 
                    "parameters" : parameters}
            members_params.append(param)

members = define_members(members_params)

param_commu = {
    "method" : "centralized",
    "deltat" : 1,
    "total_time" : 24,
    "calc_ref" : True, 
    "ref_values" : [1, 1, 1, 1],
}

community = define_community(members, **param_commu)
community.optimize("gurobi")

community.calc_gains("gurobi")
print("Gains calculated \n")
community.distribute_gains(method="proportional")
print("Gains distributed proportionaly \n")

community.distribute_gains(method="equal")
print("Gains distributed equally \n")

community.distribute_gains(method="shapley")
print("Gains distributed with Shapley \n")

community.build_model(**community.kwargs)
community.optimize("gurobi")


#%% plot

co = community
to_plot = {
    "powers" : {
        "P_grid" : [pyo.value(co.mod.P_grid_plus[t]+co.mod.P_grid_minus[t]) for t in range(co.total_time)],
        "P_bat" : [pyo.value(co.mod.P_bat[t]) for t in range(co.total_time)],
        "P_cons" : [pyo.value(co.mod.P_cons[t]) for t in range(co.total_time)], 
        "P_exchange" : [pyo.value(co.mod.P_commu_exchange[t]) for t in range(co.total_time)],
    }
}

co.plot_power_curves(**to_plot)