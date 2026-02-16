import pandas as pd
from numpy import random as rd
import re

"""
Deux manière de voir les choses, 

1 : Je fait un truc random profile de device par profile de device. 
Problème si je fais ça on risque d'avoir des données très peu réalistes

2 : J'imagine une fonction qui génère les données en fonction d'un profile de présence 
et c'est ce profile de présence qui va varier. Dans ces cas là pour pas créer un truc pour chaque device
On peut prendre un profile de conso d'une maison classique 
et y soustraire le chauffage et autres appareils définis maison

"""

# def generate_n_profiles(n, profile, **kwargs) : 
#     """
#     profile : {
#         "P wanted" : []
#         "P range" : []
#         "Time used" : []
#         "Time range" : []
#     } 
#     As for defining devices model
#     """
    
#     coef_time_in_day = kwargs.get("t_day", 0)
#     coef_time_range = kwargs.get("t_range", 0)
#     coef_pow_wanted = kwargs.get("p_wanted", 0)
#     coef_pow_range = kwargs.get("p_range", 0)
    
    
#     profiles = []
#     for k in range(n) : 
        
        
def generate_n_profile(n, profile, **kwargs) : 
    """
    On est présent le matin, pas dans la journée et on reviens le soir, après on a potentiellement une sortie
    
    profile = [[t0, tend, 0 or 1], ...]
    
    output format : {
        detailed = [0, 1, 1...]
    }
    """
    
    total_time = profile[-1][1]
    # offset = kwargs.get("offset", 2)
    lengths_rate = kwargs.get("lengths_rate", 1.5)
    lengths_breaks_rate = kwargs.get("lengths_breaks_rate", 0.5)
    # nb_breaks = kwargs.get("breaks", 1)
    n_event = len(profile)
    profiles = [[] for k in range(n)]
    details = [[0 for t in range(total_time)] for k in range(n)]
    
    for k in range(n) : 
        random_i = rd.permutation(range(n_event))
        new_seq = [profile[i] for i in range(n_event)]
        changed = set()
        changed.add(new_seq[0][0])
        changed.add(new_seq[-1][1])
        print("cahnged avant ", changed)
        for i in range(n_event) : 
            interval = new_seq[random_i[i]]
            length = interval[1] - interval[0]
            lmin = 1/lengths_rate*length
            lmax = lengths_rate*length
            print("lmin", lmin, "lmax", lmax)
            new_length = max(min(int(rd.uniform(lmin, lmax+1)), total_time), new_seq[0][0])
            print("random i", i,"length", length, "new_length", new_length)
            print("changed", changed, "interval", interval)
            if not (interval[0] in changed and interval[1] in changed) : 
                if interval[0] in changed and not (interval[1] in changed) : 
                    new_start = interval[0]
                    new_end = new_start + new_length
                    new_seq[random_i[i]] = [new_start, new_end, interval[2]]
                    new_seq[random_i[i]+1][0] = new_end
                    changed.add(new_end)
                elif not (interval[0] in changed) and interval[1] in changed :
                    new_end = interval[1]
                    new_start = new_end - new_length
                    new_seq[random_i[i]] = [new_start, new_end, interval[2]]
                    new_seq[random_i[i]-1][1] = new_start
                    changed.add(new_start)
                else :
                    if new_length > length :
                        new_start = interval[0] - int((new_length-length)/2)
                        new_end = interval[1] + int((new_length-length)/2)
                    else :
                        new_start = interval[0] + int(new_length/2)
                        new_end = interval[1] - int(new_length/2)
                    new_seq[random_i[i]] = [new_start, new_end, interval[2]]
                    new_seq[random_i[i]-1][1] = new_start
                    new_seq[random_i[i]+1][0] = new_end
                    changed.add(new_start)
                    changed.add(new_end)
                print("new_start", new_start, "new_end", new_end)
        
        profiles[k] = [[new_seq[i][0], new_seq[i][1], new_seq[i][2]] for i in range(n_event)]
        
        print("new_seq", new_seq)
        # Now we place random breaks in the big profile blocks
        
        for i in range(n_event) :
            interval = new_seq[i]
            length = interval[1] - interval[0]
            break_length = int(rd.uniform(0, lengths_breaks_rate*length))
            print("break_length", break_length, "length", length)
            if not (length - break_length <= 0) : 
                start_break = rd.randint(interval[0], interval[1]-break_length)
                for t in range(interval[0], start_break) : 
                    details[k][t] = interval[2]
                for t in range(start_break, start_break+break_length) :
                    details[k][t] = (interval[2] + 1) % 2
                for t in range(start_break+break_length, interval[1]) :
                    details[k][t] = interval[2]
    
    detailed_profiles = []
    for profile, detail in zip(profiles, details) : 
        detailed_profiles.append(detailed_profile(profile, detail))
    if kwargs.get("detailed") : 
        return detailed_profiles, details
    return detailed_profiles
        
def detailed_profile(profile, detail) : 
    detailed = []
    t0 = 0
    tend = 1
    for k in range(1, len(detail)) : 
        if detail[k-1] == detail[k] : 
            tend += 1
        else :
            detailed.append([t0, tend, detail[k-1]])
            t0 = tend
            tend = t0 + 1
    detailed.append([t0, tend, detail[-1]])
    return detailed
            
    
    
# Now that we have the profiles, we can generate specific data for each device 


                
heater_parameters = {
    "increase_power" : 100, # 166W per °C for 20m2
    "outside_temperature" : [-2, 4, -1], # °C, 
    "time" : [[0, 9], [9, 17], [17, 24]], # h
}

light_parameters = {
    "when" : "night and present", 
    "P_needed" : 10, # W
}

small_object_charge = {
    "P_needed" : 20, # W
    "cycle_length" : 1, # h
    "when" : "before leave + arrive", 
}

washer_parameters = {
    "proba" : 0.1,
    "cycle_length" : 2, # h
    "energy_needed" : 0.5*1000, # Wh
    "when" : "present at_start", 
}

washer_plus_dryer_parameters = {
    "proba" : 0.05,
    "cycle_length" : 3, # h
    "energy_needed" : 2000, # Wh
    "when" : "present at_start", 
}

dishwasher_parameters = {
    "proba" : 0.1,
    "cycle_length" : 2, # h
    "energy_needed" : 1.5*1000, # Wh
    "when" : "present at_start", 
}

hoven_parameters1 = {
    "energy_needed" : 2000/2, # Wh
    "cycle_length" : 0.5, # h
    "proba" : 0.1,
    "when" : "18-22 and present"
}

hoven_parameters2 = {
    "energy_needed" : 2000/2, # Wh
    "cycle_length" : 0.5, # h
    "proba" : 0.1,
    "when" : "12-14 and present"
}

plaque_parameters1 = {
    "energy_needed" : 2.4*1000/2, # Wh
    "cycle_length" : 0.5, # h
    "proba" : 0.9,
    "when" : "18-22 and present"
}

plaque_parameters2 = {
    "energy_needed" : 2.4*1000/2, # Wh
    "cycle_length" : 0.5, # h
    "proba" : 0.9,
    "when" : "12-14 and present"
}

big_computer_parameters = {
    "P_needed" : 100, # W
    "proba" : 0.5, 
    "when" : "present",
}
            
fixed_load_parameters = {
    "P_needed" : 15, # W
    "when" : "always", 
    "proba" : 1
}

# Defined using dataset 

fridge_parameters = {
    # 22 min d'activation à chaque fois, 1h33 entre chaque activation 100W à chaque fois
    "P_needed" : 100, # W
    "cycle_length" : 22/60, # h
    "time_between_cycles" : 1.5, # h
    "increase_power" : 1/(18-6)*100, # W/°C
    "when" : "always",
}

water_heater_parameters = {
    "P_needed" : 1350, # W
    "cycle_length" : 0.5, # h
    "time_cycles" : [6, 12, 17], # h
}

EV_parameters_zoe = {
    "capacity" : 22000, # Wh
    "min_soc" : 0.2,
    "max_soc" : 1,
    "p_range" : [-3000, 3000], # W
    "dist" : 0.146, # kWh/km
    "Emin" : [(0.146*40*1000, "leave")], # Wh, 50km before leaving
    "Eleft" : [(-0.146*40*1000, "arrive")], # Wh, 50km after arriving
    "proba" : 0.1
}

EV_parameters_rav4 = {
    "capacity" : 41.8*1000, # Wh
    "min_soc" : 0.2,
    "max_soc" : 1,
    "p_range" : [-10000, 10000], # W
    "dist" : 0.32, # kWh/km
    "Emin" : [(0.32*20*1000, "leave")], # Wh, 20km before leaving
    "Eleft" : [(-0.32*20*1000, "arrive")], # Wh, 20km after arriving
    "proba" : 0.1
}

batterie_parameters = {
    "capacity" : 15000, # Wh
    "min_soc" : 0.2,
    "max_soc" : 1,
    "p_range" : [-5000, 5000], # W
    "proba" : 0.1
}

PV_generation_parameters = {
    "surface" : 60, # m2
    "efficiency" : 0.2, # %
    "irradiance" :   [0, 0, 0, 0, 0, 0, 0, 0, 84.43, 315.57, 494.97, 599.4, 620.77, 557.58, 414.39, 196.2, 0, 0, 0, 0, 0, 0, 0, 0], # W/m2
    "proba" : 0.4
}

parameters = {
    "heater" : heater_parameters,
    "light" : light_parameters,
    "small_object_charge" : small_object_charge,
    "washer" : washer_parameters,
    "washer_plus_dryer" : washer_plus_dryer_parameters,
    "dishwasher" : dishwasher_parameters,
    "hoven" : hoven_parameters1,
    "hoven2" : hoven_parameters2,
    "plaque" : plaque_parameters1,
    "plaque2" : plaque_parameters2,
    "big_computer" : big_computer_parameters,
    "fixed_load" : fixed_load_parameters,
    "fridge" : fridge_parameters,
    "water_heater" : water_heater_parameters,
    "EV_zoe" : EV_parameters_zoe,
    "EV_rav4" : EV_parameters_rav4,
    "batterie" : batterie_parameters,
    "PV_generation" : PV_generation_parameters  
}

def create_random_agent(profile, deltat=1, forced_devices = set()) :
    # For now no battery, PV or EV.
    t0, tend = profile[0][0], profile[-1][1]
    
    devices_param = {}
    keys_to_pop = []
    grosse_techno = ["EV_zoe", "EV_rav4", "batterie", "PV_generation"]
    interdiction = []
    for key in parameters :
        if ((key not in interdiction and parameters[key].get("proba", 1) > rd.rand()) 
            or key in forced_devices) :
            devices_param[key] = {}
            if key in grosse_techno : 
                devices_param["PV_generation"] = {}
            
    for key in devices_param :
        print(key)
        if key=="heater" : 
            confort = rd.randint(18, 23)
            p_range = []
            for event in profile :
                if event[2] == 1 : 
                    for k in range(event[0], event[1]) : 
                        outside_temp = get_outside_temp(k, parameters[key]["outside_temperature"], parameters[key]["time"])
                        p_confort = parameters[key]["increase_power"]*(confort-outside_temp)
                        p_needed = parameters[key]["increase_power"]*(18-outside_temp)
                        p_range.append([p_needed, p_confort])
                else : 
                    for k in range(event[0], event[1]) :
                        outside_temp = get_outside_temp(k, parameters[key]["outside_temperature"], parameters[key]["time"])
                        p_confort = parameters[key]["increase_power"]*(15-outside_temp)
                        p_needed = parameters[key]["increase_power"]*(13-outside_temp)
                        p_range.append([p_needed, p_confort])
            devices_param[key] = {"parameters" : {"power_range" : p_range}, "type" : "flex"}
        
        elif key in ["light", "small_object_charge", "fixed_load", "big_computer", "water_heater", "big_computer"] : 
            p_range = []
            if parameters[key].get("when", "") == "always" :
                for event in profile :
                    for k in range(event[0], event[1]) : 
                        p_range.append(parameters[key]["P_needed"])
                
            else : 
                if parameters[key].get("time_cycles") : 
                    time_cycles = parameters[key]["time_cycles"]
                    cycle_length = parameters[key]["cycle_length"]
                    t_start = time_cycles[0]
                    c = 0
                    for k in range(t0, tend) :
                        # print("bonjour", c, k, t_start) 
                        if k*deltat >= t_start and (k-1)*deltat < t_start + cycle_length : 
                            if deltat >= cycle_length : 
                                p_range.append(parameters[key]["P_needed"]*cycle_length/deltat)
                            else : 
                                p_range.append(parameters[key]["P_needed"]) # Approximatif mais ok
                            if (k+1)*deltat > t_start + cycle_length : 
                                if c < len(time_cycles)-1 :
                                    c += 1
                                    t_start = time_cycles[c]
                                    
                        else :
                            p_range.append(0)
                else :
                    p_range = find_time_when(parameters[key]["when"], profile, parameters[key])
                
            devices_param[key] = {"parameters" : {"power_profile" : p_range}, "type" : "fixed"}
            
        elif key in ["washer", "washer_plus_dryer", "dishwasher", "hoven", "plaque", "hoven2", "plaque2"] :
            only_time = find_time_when(parameters[key]["when"], profile, parameters[key], only_time=True)
            # random prefered time of start
            cycle_length = parameters[key]["cycle_length"]
            if not(len(only_time) < cycle_length) :  
                
                t_start_index = rd.randint(len(only_time))
                t_start = only_time[t_start_index]
                
                # t_range defined as the time range where the device can be used around t_start
                c_plus = 0
                c_minus = 0
                while t_start_index+c_plus < len(only_time)-cycle_length and t_start + c_plus == only_time[t_start_index + c_plus] : 
                    c_plus += 1
                while t_start_index-c_minus >= 0 and t_start - c_minus == only_time[t_start_index - c_minus] : 
                    c_minus += 1
                    
                if c_plus -1 == 0 : c_plus = 1
                if c_minus -1 == 0 : c_minus = 1
                t_range = [-(c_minus-1), c_plus-1]
                p_needed = [parameters[key]["energy_needed"]/cycle_length]
                white_good = {'cycle_length' : [cycle_length], 
                    'power_needed' : p_needed, 
                    "start_pref" : [t_start], 
                    "time_range" : [t_range], 
                    }
                devices_param[key] = {"parameters" : white_good, "type" : "white_good"}
            else : 
                keys_to_pop.append(key)
            
        elif key == "fridge" :
            p_range = []
            time_cycles = [t0 + i*(parameters[key]["cycle_length"] + parameters[key]["time_between_cycles"]) for i in range(int((tend-t0)/(parameters[key]["cycle_length"] + parameters[key]["time_between_cycles"])))]
            cycle_length = parameters[key]["cycle_length"]
            t_start = time_cycles[0]
            
            confort = rd.randint(1, 7)
            p_needed = parameters[key]["P_needed"]
            p_confort = parameters[key]["P_needed"]+ parameters[key]["increase_power"]*(6-confort)
            
            c = 0
            for k in range(t0, tend) : 
                if k*deltat >= t_start and (k-1)*deltat < t_start + cycle_length : 
                    if deltat >= cycle_length : 
                        p_range.append([p_needed*cycle_length/deltat, p_confort*cycle_length/deltat])
                    else : 
                        p_range.append([p_needed, p_confort]) # Approximatif mais ok
                    if (k+1)*deltat > t_start + cycle_length : 
                        if c < len(time_cycles)-1 :
                            c += 1
                            t_start = time_cycles[c]
                else :
                    p_range.append([0, 0])

            devices_param[key] = {"parameters" : {"power_range" : p_range}, "type" : "flex"}
        
        elif key in ["EV_zoe", "EV_rav4"] :
            # on choisit aléatoirement deux moments de on part on revient aléatoirement juste pas moins d'une heure
            # On en déduit le time_home, Emin et E0s
            possible_start = []
            time_home = []
            Emin = []
            soc_max = parameters[key]["capacity"]*parameters[key]["max_soc"]
            soc_min = parameters[key]["capacity"]*parameters[key]["min_soc"]
            p_range = parameters[key]["p_range"]
            E0s = [(soc_max+soc_min)/2]
            
            # random consumption of electricity of the vehicle between 1.5 and 1/1.5
            conso = rd.uniform(1/1.5, 1.5)*40*parameters[key]["dist"]*1000
            
            flag = True
            for i in range(len(profile)-1) :
                if profile[i][2] == 1 and profile[i+1][2] == 0 and profile[i][1] - profile[i][0] >= 2 : 
                    possible_start.append(profile[i][1])
            if len(possible_start) > 0 :
                t_start = rd.choice(possible_start)
                time_home.append([profile[0][0], t_start])
                Emin.append(conso+soc_min)   
            else : flag = False
            
            possible_end = []
            for i in range(1, len(profile)) :
                if profile[i-1][2] == 0 and profile[i][2] == 1 and profile[i][0] - t_start >= 1 : 
                    possible_end.append(profile[i][0])
            if len(possible_end) > 0 :
                t_end = rd.choice(possible_end)
                time_home.append([t_end, profile[-1][1]])
                # Emin.append(parameters[key]["Eleft"][0][0])
                E0s.append(-conso)
            else : flag = False
            
            if flag :
                Emin.append(E0s[0])
                devices_param[key] = {
                    "parameters" : {
                        "p_range" : p_range, 
                        "E_range" : [soc_min, soc_max],
                        "time_home" : time_home, 
                        "E0s" : E0s,
                        "E_min" : Emin, 
                        "E_end" : Emin[0]
                    }, 
                    "type" : "EV"
                }
            else : keys_to_pop.append(key)
            
        elif key in ["batterie"] : 
            # instant
            #             batterie_parameters = {
            #     "capacity" : 15000, # Wh
            #     "min_soc" : 0.2,
            #     "max_soc" : 1,
            #     "p_range" : [-5000, 5000], # W
            #     "proba" : 0.1
            # }
            soc_max = parameters[key]["capacity"]*parameters[key]["max_soc"]
            soc_min = parameters[key]["capacity"]*parameters[key]["min_soc"]
            Emin = [(soc_min+soc_max)/2]
            devices_param[key] = {
                    "parameters" : {
                        "p_range" : parameters[key]["p_range"], 
                        "E_range" : [soc_min, soc_max],
                        "time_home" : [[t0, tend]],
                        "E0s" : Emin,
                        "E_min" : Emin, 
                        "E_end" : Emin[0]
                    }, 
                    "type" : "EV"
                }
        elif key == "PV_generation" :
            surface = rd.uniform(0.1, 1)*parameters[key]["surface"]
            efficiency = rd.uniform(0.6, 1.2)*parameters[key]["efficiency"]
            devices_param[key] = {
                "parameters" : {"production_profile": generate_prod_profile(parameters[key]["irradiance"], surface, efficiency)},
                "type" : "production"
            }
            
    for key in keys_to_pop : 
        devices_param.pop(key)
    return devices_param
                
            
            
            
def get_outside_temp(k, temp_list, time_list) : 
    for i in range(len(time_list)) : 
        if k < time_list[i][1] and k >= time_list[i][0] : 
            return temp_list[i]
    return temp_list[-1]

def find_time_when(when, profile, param, night_time=[[0, 8], [17, 24]], sleep_time=[[0, 6], [23, 24]], only_time=False) :
    conditions = when.split("+")
    p = []
    prof_cond = []
    for condition in conditions :
        condition = condition.strip()
        scond = condition.split("and")
        sprofs = []
        for c in scond :
            c = c.strip()
            if c == "present" :
                sp = []
                for event in profile :
                    if event[2] == 1 : 
                        for k in range(event[0], int(event[1]-param.get("cycle_length", 0))) : 
                            if k >= sleep_time[0][1] and k < sleep_time[1][0] : 
                                sp.append(k)
                sprofs.append(sp)
            elif c == "night" :
                sp = []
                for night in night_time : 
                    for k in range(night[0], night[1]) : 
                        sp.append(k)
                sprofs.append(sp)
            elif re.match(r"\d+-\d+", c) :
                sp = []
                time_range = c.split("-")
                t_start, t_end = int(time_range[0]), int(time_range[1])
                for k in range(t_start, t_end) : 
                    sp.append(k)
                sprofs.append(sp)
            elif c == "present at_start" :
                sp = []
                for event in profile :
                    if event[2] == 1 : 
                        for k in range(event[0], event[1]) : 
                            if k >= sleep_time[0][1] and k < sleep_time[1][0] :
                                sp.append(k)
                sprofs.append(sp)
            elif c == "before leave" :
                sp = []
                for i in range(len(profile)) : 
                    if profile[i][2] == 1 and i+1 < len(profile) and profile[i+1][2] == 0 : 
                        for k in range(profile[i][1]-param.get("cycle_length", 0), profile[i][1]) : 
                            sp.append(k)
                sprofs.append(sp)
            elif c == "arrive" :
                sp = []
                for i in range(len(profile)) : 
                    if profile[i][2] == 1 and i-1 >=0 and profile[i-1][2] == 0 :
                        if profile[i][0] + param.get("cycle_length", 0) < profile[i][1] : 
                            for k in range(profile[i][0], profile[i][0] + param.get("cycle_length", 0)) : 
                                sp.append(k)
                sprofs.append(sp)
                
        if len(sprofs) > 1 :
            sprofs = set(sprofs[0]).intersection(*sprofs[1:])
        else :
            sprofs = set(sprofs[0])
        prof_cond.append(sprofs)
    final_prof = set(prof_cond[0]).union(*prof_cond[1:]) if len(prof_cond) > 1 else set(prof_cond[0])
    if only_time :
        return sorted(list(final_prof))
    p = [param["P_needed"] if k in final_prof else 0 for k in range(profile[0][0], profile[-1][1])]
    return p
        
            
def generate_prod_profile(irradiance_profile, available_surface, efficiency) : 
    prod_profile = []
    for irradiance in irradiance_profile : 
        prod_profile.append(available_surface*efficiency*irradiance)
    return prod_profile
    
if __name__ == "__main__" :
    # import matplotlib.pyplot as plt 
    # import os
    
    # data_folder = os.path.join(os.path.dirname(__file__), "../../../../projet_g3_data")
    # fridge_file = os.path.join(data_folder, "water_heater_refrigerator.xlsx")
    # df_fridge = pd.read_excel(fridge_file, sheet_name="Sheet1", parse_dates=["date", "date2 (refrigerator)"])
    
    # #%%
    
    # # date0 = df_fridge["date2 (refrigerator)"][0]
    # # dateEnd = date0 + pd.Timedelta(days=1)
    # # df_day = df_fridge[(df_fridge["date2 (refrigerator)"] >= date0) & (df_fridge["date2 (refrigerator)"] < dateEnd)] 
    # # plt.plot(df_day["date2 (refrigerator)"], df_day["Active Power2"])
    # # plt.show()
    
    # date0 = df_fridge["date"][0]
    # dateEnd = date0 + pd.Timedelta(days=1)
    # df_day = df_fridge[(df_fridge["date"] >= date0) & (df_fridge["date"] < dateEnd)] 
    # plt.plot(df_day["date"], df_day["Active Power"])
    # plt.show()
    
    profile = [[0, 8, 1], [8, 16, 0], [16, 24, 1]]
    profiles = generate_n_profile(5, profile, offset=2, lengths_rate=1.3, lengths_breaks_rate=0.3)
    new_prof = profiles[0]
    agent = create_random_agent(new_prof, forced_devices={"batterie", "EV_zoe"})
    
    print(agent['EV_zoe'])
    # print(new_prof, {k : agent['heater']['parameters']['power_range'][k] for k in range(len(agent['heater']['parameters']['power_range']))})
    