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
