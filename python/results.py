import json, os
import matplotlib.pyplot as plt
from matplotlib import rcParams
import numpy as np
import pandas as pd

import sys
sys.path.append("/Users/theophilemounier/Desktop/git/projet_g3/python")

import pyomo.environ as pyo
from pyomo.opt import SolverFactory


from commu_opti.data.generate_data import generate_n_profile, create_random_agent, detailed_profile
from commu_opti.commu_builder import define_members, define_community
from commu_opti.plotting.plot_functions import plot_3d, plot_hexagon_objective
from commu_opti.community.utils import invest_cost, calc_invest_cost, calc_eco_total, calc_eco

# Ensure Times New Roman or fallback to a similar font
try:
    rcParams['font.family'] = 'Times New Roman'
except ValueError:
    print("Warning: 'Times New Roman' not found. Falling back to 'Times'.")
    rcParams['font.family'] = 'Times'

rcParams['font.size'] = 12

home_path = os.path.dirname(__file__)   
#%%

candidate_folder = os.path.join(home_path, "../../projet_g3_data/candidates")

irradiance_profile = [0, 0, 0, 0, 0, 0, 0, 0, 84.43, 315.57, 494.97, 599.4, 620.77, 557.58, 414.39, 196.2, 0, 0, 0, 0, 0, 0, 0, 0]

members_params = []
c = 0
for file in os.listdir(candidate_folder) : 
    if file.endswith(".json") : 
        with open(os.path.join(candidate_folder, file), "r") as fp : 
            data = json.load(fp)
            devices = data["devices"]
            parameters = data["parameters"]
            parameters["bat_exchange"] = True
            parameters["name"] = file[9:-5]
            parameters["id_"] = c
            parameters["socio"] = [1, 1, 0, 1]
            parameters["def_irradiance"] = True
            parameters["irradiance_profile"] = irradiance_profile
            param = {"devices" : devices, "device_options" : {"total_time" : 24, "deltat" : 1}, 
                    "parameters" : parameters}
            members_params.append(param)
            c += 1

members = define_members(members_params)

#%% Create a pandas DataFrame to represent the members and their devices

member_names = [f"Member {member.id}" for member in members]
devices = set(device.name for member in members for device in member.devices)

# Initialize the DataFrame with member names as columns
data = {name: [] for name in member_names}

# Add a row for a brief description of each member
for member in members:
    if member.id == 0 : 
        data[f"Member {member.id}"].append("50 kWh EV and great production")
    if member.id == 1 : 
        data[f"Member {member.id}"].append("Great production")
    if member.id == 2 : 
        data[f"Member {member.id}"].append("Only consumption")
    if member.id == 3 : 
        data[f"Member {member.id}"].append("Only consumption")
    if member.id == 4 : 
        data[f"Member {member.id}"].append("30 kWh batterie")

# Add rows for each device, marking 'X' if the device is present for the member
for device in devices:
    row = []
    for member in members:
        row.append("X" if any(d.name == device for d in member.devices) else "")
    for i, name in enumerate(member_names):
        data[name].append(row[i])

row = []
for member in members:
    if member.id == 0 : 
        row.append("X")
    if member.id == 1 : 
        row.append("X")
    if member.id == 2 : 
        row.append("")
    if member.id == 3 : 
        row.append("")
    if member.id == 4 : 
        row.append("X")
for i, name in enumerate(member_names):
    data[name].append(row[i])


    # # Update the DataFrame data with renamed devices
    # for old_name, new_name in renamed_devices.items():
    #     if old_name in data:
    #         data[new_name] = data.pop(old_name)
# Rename elements of devices by capitalizing the first letter and replacing underscores with spaces
renamed_devices = [device.replace("_", " ").capitalize() for device in devices]
# Create the DataFrame
columns = ["Description"] + renamed_devices + ["Solar panel"]
df = pd.DataFrame(data, index=columns)
print(df)
columns = []
# Make the DataFrame prettier by adding borders and formatting
# styled_df = df.style.set_table_styles(
#     [{'selector': 'th', 'props': [('border', '1px solid black')]},
#      {'selector': 'td', 'props': [('border', '1px solid black')]}]
# ).set_properties(**{'text-align': 'center'})

# Export the styled DataFrame to an EPS file
fig, ax = plt.subplots(figsize=(10, 6))
ax.axis('tight')
ax.axis('off')
table = ax.table(cellText=df.values, colLabels=df.columns, rowLabels=df.index, cellLoc='center', loc='center')
# table.auto_set_font_size(False)
# table.set_fontsize(10)
table.auto_set_column_width(col=list(range(len(df.columns))))
fig.tight_layout()

# plt.savefig("figs/dataframe_output.eps", format='eps', bbox_inches='tight')


#%% Plot for each member the power profiles of the different devices

for test_member in members :
    # plt.figure()
    test_member.build_model(**test_member.kwargs)
    test_member.self_optimize("gurobi")
    to_plot = {
        "powers" : {
            "Power grid" : [pyo.value(test_member.P_grid_plus[t]-test_member.P_grid_minus[t]) for t in range(test_member.total_time)],
            "Power batteries" : [pyo.value(test_member.P_bat[t]) for t in range(test_member.total_time)],
            "Power consumed" : [pyo.value(test_member.P_cons[t]) for t in range(test_member.total_time)], 
            # "Power exchanged" : [pyo.value(test_member.P_exchange[t]) for t in range(test_member.total_time)],
            "Power produced" : test_member.P_prod
        },
        "title" : f"Power profiles of member {test_member.id}",
    }
        
    test_member.plot_power_curves(**to_plot)
    output_path = os.path.join(home_path, f"figs/member_profiles/member_{test_member.id}_power_profiles.eps")
    plt.savefig(output_path, format='eps', bbox_inches='tight')
    
#%% commu basic


profiles = [[0.4, 0.1, 0, 0.5], [0.5, 0.2, 0, 0.3], [0.8, 0.1, 0, 0.1], [0.4, 0.4, 0, 0.2], [0.2, 0.6, 0, 0.2]]

for member in members :
    member.socio = profiles[member.id]
    
# members = members[0:2]

param_commu = {
    "method" : "centralized",
    "deltat" : 1,
    "total_time" : 24,
    "calc_ref" : True, 
    "ref_values" : [1, 1, 1, 1],
}

price_options = {
    "eco" : {
        "cost_grid_buy" : 0.0003, # €/wh
        "cost_grid_sell" : -0.00003,
        "cost_ex" : 0, 
        "cost_PV" : 800, # € per m2
        # "cost_PV" : 0, # per m2
        "PV_min" : 0,
        "cost_bat" : 0.5, # € per wh
        # "cost_bat" : 0, # per kwh
        "bat_min" : 0,
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

community = define_community(members, **param_commu, **price_options)
# community.socio = [1, 1, 0, 1]
community.optimize("gurobi")

#%% Some temporary test
# for member
m = community.members[4]
P_grid_plus = [pyo.value(m.mod_member.P_grid_plus[t]) for t in m.mod_member.time_index]
P_grid_minus = [pyo.value(m.mod_member.P_grid_minus[t]) for t in m.mod_member.time_index]
P_exchange = [pyo.value(m.P_exchange[t]) for t in m.mod_member.time_index]
PV_surface = pyo.value(m.PV_surface)
bat_cap = pyo.value(m.bat_cap)
bat_pre = 1
PV_pre = 1

eco_args = {**price_options["eco"]}
eco_args["deltat"] = m.deltat
eco_args["total_time"] = m.total_time
eco_args["ref"] = community.ref_values[0]

tot = calc_eco_total(P_grid_plus, P_grid_minus, P_exchange, PV_surface, PV_pre, bat_cap, bat_pre, **eco_args)
ope = calc_eco(P_grid_plus, P_grid_minus, P_exchange, **eco_args)
invest = calc_invest_cost(PV_surface, PV_pre, bat_cap, bat_pre, **eco_args)


#%%

community.calc_gains("gurobi")
print("Gains calculated \n")
community.distribute_gains(method="proportional")
print("Gains distributed proportionaly \n")

community.distribute_gains(method="equal")
print("Gains distributed equally \n")

community.distribute_gains(method="shapley")
print("Gains distributed with Shapley \n")

#%% test 
# community.current_members_id = [0, 1]
community.build_model()
r = community.optimize("gurobi")
print("objective value : ", pyo.value(community.mod.obj))
print("price", pyo.value(community.price))
print("enviro", pyo.value(community.enviro))
print("comfort", pyo.value(community.confort))
#%% Repartition of gains 

from commu_opti.plotting.plot_functions import plot_3d, plot_hexagon_objective

values = community.members_gains
labels = [f"Member {member.id}" for member in community.members]

production_peaks = [max([pyo.value(community.members[id_].P_prod[i]) for i in community.members[id_].time_index]) for id_ in community.members_id]
normaliser = sum(production_peaks)

prod_values = {member.id : production_peaks[member.id]/normaliser for member in community.members}

bat_capacities = []
for id_ in community.members_id :
    member = community.members[id_]
    C = 0
    for device in member.devices :
        if hasattr(device, "E") : 
            C += device.E_range[1] - device.E_range[0]

    bat_capacities.append(C)
normaliser_bat = sum(bat_capacities)
bat_values = {member.id : bat_capacities[member.id]/normaliser_bat for member in community.members}

conso = []
for id_ in community.members_id :
    member = community.members[id_]
    conso.append(sum(pyo.value(member.P_cons[t]) for t in range(member.total_time)))
normaliser_conso = sum(conso)
conso_values = {member.id : conso[member.id]/normaliser_conso for member in community.members}

values["Production"] = prod_values
values["Battery capacity"] = bat_values
values["Consumption"] = conso_values

folder_path = os.path.join(home_path, "figs/gains_allocation")
if not os.path.exists(folder_path) :
    os.makedirs(folder_path)

to_plot = {
    "values" : {"Proportional allocation" : values["proportional"],
                "Equal allocation" : values["equal"],
                "Shapley allocation" : values["shapley"],
                },
    "labels" : labels,
    "dimension" : 1,
    "title" : "Gains allocation in proportion to total gains among members",
    "save_path" : os.path.join(folder_path, "gains_allocation_proportional.eps")
}
fig1, ax1 = plot_hexagon_objective(**to_plot)

to_plot = {
    "values" : {"Proportional allocation" : values["proportional"],
                "Production rate" : values["Production"],
                "Battery capacity rate" : values["Battery capacity"],
                "Consumption rate" : values["Consumption"]
                },
    "labels" : labels,
    "dimension" : 1,
    "circle" : True, 
    "ylim" : 0.5, 
    "title" : "Proportional allocation compared to production and battery capacity rates",
    "save_path" : os.path.join(folder_path, "proportional_vs_production_battery.eps"), 
    "options" : {
        "Proportional allocation" : {
            "plot" : {
                "color" : "black",
                "linewidth" : 1.5, 
                },
            "fill" : {
                "color" : "black", 
                "alpha" : 0.25
                }
            }
        }
}
fig2, ax2 = plot_hexagon_objective(**to_plot)

to_plot = {
    "values" : {"Shapley allocation" : values["shapley"],
                "Production rate" : values["Production"],
                "Battery capacity rate" : values["Battery capacity"],
                "Consumption rate" : values["Consumption"]
                },  
    "labels" : labels,
    "dimension" : 1,
    "circle" : True, 
    "ylim" : 0.5, 
    "title" : "Shapley allocation compared to production and battery capacity rates",
    "save_path" : os.path.join(folder_path, "shapley_vs_production_battery.eps"), 
    "options" : {
        "Shapley allocation" : {
            "plot" : {
                "color" : "black",
                "linewidth" : 1.5, 
                },
            "fill" : {
                "color" : "black", 
                "alpha" : 0.25
                }
            }
        }
}
fig3, ax3 = plot_hexagon_objective(**to_plot)

to_plot = {
    "values" : {"Equal allocation" : values["equal"],
                "Production rate" : values["Production"],
                "Battery capacity rate" : values["Battery capacity"],
                "Consumption rate" : values["Consumption"]
                },  
    "labels" : labels,
    "dimension" : 1,
    "circle" : True, 
    "ylim" : 0.5, 
    "title" : "Equal allocation compared to production and battery capacity rates",
    "save_path" : os.path.join(folder_path, "equal_vs_production_battery.eps"), 
    "options" : {
        "Equal allocation" : {
            "plot" : {
                "color" : "black",
                "linewidth" : 1.5, 
                },
            "fill" : {
                "color" : "black", 
                "alpha" : 0.25
                }
            }
        }
}
fig4, ax4 = plot_hexagon_objective(**to_plot)


#%% plot
community.socio = [1, 1, 0, 1]
community.build_model(**community.kwargs)
community.optimize("gurobi")
co = community
to_plot = {
    "powers" : {
        "Power grid" : [pyo.value(co.mod.P_grid_plus[t]+co.mod.P_grid_minus[t]) for t in range(co.total_time)],
        "Power batteries" : [pyo.value(co.mod.P_bat[t]) for t in range(co.total_time)],
        "Power consumed" : [pyo.value(co.mod.P_cons[t]) for t in range(co.total_time)], 
        "Power exchanged" : [pyo.value(co.mod.P_commu_exchange[t]) for t in range(co.total_time)],
        "Power produced" : [pyo.value(co.mod.P_prod[t]) for t in range(co.total_time)],
    },
    "title" : "Power profiles of the community"
}

co.plot_power_curves(**to_plot)
output_path = os.path.join(home_path, f"community_centralized.eps")
plt.savefig(output_path, format='eps', bbox_inches='tight')

#%% Plot for different profiles 

comu_profile_path = os.path.join(home_path, "figs/community_profiles")
if not os.path.exists(comu_profile_path) :
    os.makedirs(comu_profile_path)

profiles = {"economic only": [1, 0, 0, 0], "environmental only": [0, 1, 0, 0], "comfort only": [0, 0, 0, 1]}
for name, profile in profiles.items() : 
    community.socio = profile
    community.build_model(**community.kwargs)
    community.optimize("gurobi")
    co = community
    to_plot = {
        "powers" : {
            "Power grid" : [pyo.value(co.mod.P_grid_plus[t]+co.mod.P_grid_minus[t]) for t in range(co.total_time)],
            "Power batteries" : [pyo.value(co.mod.P_bat[t]) for t in range(co.total_time)],
            "Power consumed" : [pyo.value(co.mod.P_cons[t]) for t in range(co.total_time)], 
            "Power exchanged" : [pyo.value(co.mod.P_commu_exchange[t]) for t in range(co.total_time)],
            "Power produced" : [pyo.value(co.mod.P_prod[t]) for t in range(co.total_time)],
        },
        "title" : f"Power profiles of the community with {name}",
    }
    co.plot_power_curves(**to_plot)
    output_path = os.path.join(comu_profile_path, f"community_{name.replace(' ', '_')}_power_profiles.eps")
    plt.savefig(output_path, format='eps', bbox_inches='tight')
    
#%% Pareto front  computation

weights = []
for a1 in np.linspace(0,1,50):
    for a2 in np.linspace(0,1-a1,50):
        a3 = 1 - a1 - a2
        if a3 >= 0:
            weights.append((a1,a2,a3))


price = []
enviro = []
comfort = []
for a1, a2, a3 in weights :
    community.socio = [a1, a2, 0, a3]
    community.build_model(**community.kwargs)
    community.optimize("gurobi")

    price.append(pyo.value(community.mod.price))
    enviro.append(pyo.value(community.mod.enviro))
    comfort.append(pyo.value(community.mod.confort))
    
import json 
with open(os.path.join(home_path, "pareto_front.json"), "w") as fp :
    json.dump({"price" : price, "enviro" : enviro, "comfort" : comfort}, fp)


#%% plot pareto front
options = {
    "title" : "Pareto front for the fully centralized optimization",
    "xlabel" : "Electricity cost",
    "ylabel" : "Carbon footprint",
    "zlabel" : "Comfort",
    "save_path" : os.path.join(home_path, "figs/commu_pareto_front.eps")
}
plot_3d(price, enviro, comfort, **options)


# Plot each 2D projection of the Pareto front
options = {
    "title" : "Pareto front projection: Cost vs Comfort",
    "xlabel" : "Electricity cost",
    "ylabel" : "Comfort",
    "save_path" : os.path.join(home_path, "figs/commu_pareto_front_cost_comfort.eps")
}
plt.figure()
plt.plot(price, comfort, '+')
plt.title(options["title"])
plt.xlabel(options["xlabel"])
plt.ylabel(options["ylabel"])
plt.grid()
plt.savefig(options["save_path"])

options = {
    "title" : "Pareto front projection: Cost vs Carbon footprint",
    "xlabel" : "Electricity cost",
    "ylabel" : "Carbon footprint",
    "save_path" : os.path.join(home_path, "figs/commu_pareto_front_cost_enviro.eps")
}
plt.figure()
plt.plot(price, enviro, '+')
plt.title(options["title"])
plt.xlabel(options["xlabel"])
plt.ylabel(options["ylabel"])
plt.grid()
plt.savefig(options["save_path"])   

options = {
    "title" : "Pareto front projection: Comfort vs Carbon footprint",
    "xlabel" : "Comfort",
    "ylabel" : "Carbon footprint",
    "save_path" : os.path.join(home_path, "figs/commu_pareto_front_comfort_enviro.eps")
}
plt.figure()
plt.plot(comfort, enviro, '+')
plt.title(options["title"])
plt.xlabel(options["xlabel"])
plt.ylabel(options["ylabel"])
plt.grid()
plt.savefig(options["save_path"])


