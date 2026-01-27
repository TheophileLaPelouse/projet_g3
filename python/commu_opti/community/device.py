from . import pyo

class device :
    def __init__(self, power_range, time_use, time_range, **kwargs) : 
        """Describe behaviour of any device in the community other than battery and maybe EV

        Args:
            power_range (_type_): list of power range [min, max]
            time_use (_type_): list of [t0, tend] in hour (if week t0 can be > 24)
            time_range (_type_): list of [-trange, +trange] ie [-2, 2] if it can be 2 hours later or before
            nb_hour (_type_): _description_
        """
        
        
        # input definition
        self.p_range = power_range
        self.t_use = time_use 
        self.t_range = time_range 
        self.total_time = kwargs.get('total_time', 24)
        self.deltat = kwargs.get('deltat', 1) # hour
        try : 
            assert(len(self.p_range) == len(self.t_use))
            assert(len(self.p_range) == len(self.t_range))
        except : 
            print("Warning : wrong size in the list when initializing device")
        
        # ouput definition
        mod = pyo.ConcreteModel()
        self.mod = mod
        self.dual = pyo.RangeSet(0, 1)
        self.t_set = pyo.RangeSet(0, len(self.p_range) - 1)  # set of time interval
        # self.total_time_set = pyo.RangeSet(0, self.total_time)
        self.allocated_power = pyo.Var(self.t_set, within=pyo.Reals)
        self.opti_t_use = pyo.Var(self.t_set, self.dual, within=pyo.Reals)  # t0 and tend for each time interval
        
        # excesses 
        self.p_excess_l = pyo.Var(self.t_set, within=pyo.NonNegativeReals)
        self.p_excess_u = pyo.Var(self.t_set, within=pyo.NonNegativeReals)
        
        self.t_excess_l = pyo.Var(self.t_set, self.dual, within=pyo.NonNegativeReals)
        self.t_excess_u = pyo.Var(self.t_set, self.dual, within=pyo.NonNegativeReals)

            
        self.power_score = 0
        self.time_score = 0 
        # self.p_con_lower = None
        # self.p_con_u = None
        # self.t_con_lower = None
        # self.t_con_u = None

        mod.dual = self.dual
        mod.t_set = self.t_set
        mod.allocated_power = self.allocated_power
        mod.opti_t_use = self.opti_t_use
        mod.p_excess_l = self.p_excess_l
        mod.p_excess_u = self.p_excess_u
        mod.t_excess_l = self.t_excess_l
        mod.t_excess_u = self.t_excess_u
        
        self.variable = not(kwargs.get('is_param', False))
        if self.variable :
            self.generate_constraint()
        else : 
            for k in self.mod.t_set : 
                mod.allocated_pow[k].fix(self.p_range[k][1])
                mod.opti_t_use[k, 0].fix(self.t_use[k][0])
                mod.opti_t_use[k, 1].fix(self.t_use[k][1])
                mod.p_excess_l[k].fix(0)
                mod.p_excess_u[k].fix(0)
                mod.t_excess_l[k, 0].fix(0)
                mod.t_excess_l[k, 1].fix(0)
                mod.t_excess_u[k, 0].fix(0)
                mod.t_excess_u[k, 1].fix(0)

        
    def generate_constraint(self) : 
        
        def power_constraint_lower(mod, t_set) : 
            return (mod.allocated_power[t_set] + mod.p_excess_l[t_set] >= self.p_range[t_set][0])
        def power_constraint_upper(mod, t_set) :
            return mod.allocated_power[t_set] <= self.p_range[t_set][1] + mod.p_excess_u[t_set]
        self.mod.p_con_l = pyo.Constraint(self.mod.t_set, rule=power_constraint_lower)
        self.mod.p_con_u = pyo.Constraint(self.mod.t_set, rule=power_constraint_upper)
        
        
        def time_constraint_lower(mod, t_set, dual) :
            return mod.opti_t_use[t_set, dual] - self.t_use[t_set][dual] + mod.t_excess_l[t_set, dual] >= self.t_range[t_set][dual]
        def time_constraint_upper(mod, t_set, dual) :
            return self.opti_t_use[t_set, dual] - self.t_use[t_set][dual] <= self.t_range[t_set][dual] + mod.t_excess_u[t_set, dual] 
        self.mod.t_con_l = pyo.Constraint(self.mod.t_set, self.mod.dual, rule=time_constraint_lower)
        self.mod.t_con_u = pyo.Constraint(self.mod.t_set, self.mod.dual, rule=time_constraint_upper)
        
    def generate_bat_constraint(self, E_end=None) : 
        mod = self.mod
        # Initialization of the state of charge  
        def soc0(mod) : 
            return mod.E == self.E0
        mod.init_con = pyo.Constraint(rule=soc0)
        
        # Soc constraint
        def soc(mod, t) :
            return mod.E[t] == mod.E[t - 1] + mod.P_plus[t] * self.charge_eff - mod.P_minus[t] / self.dcharge_eff
        mod.soc_con = pyo.Constraint(self.t_set, rule=soc)

        def power_constraint(mod, t) :
            return mod.allocated_power[t] == mod.P_plus[t] - mod.P_minus[t] 
            # Pour l'instant on fait comme ça pour rester un max linéaire, on verra si on ajoute une fonction de pénalisation
        mod.pow_con = pyo.Constraint(self.t_set, rule=power_constraint)
        
        if E_end is None : 
            E_end = self.E0
            
        def soc_end(mod) :
            return mod.E[self.T] == E_end
        mod.end_con = pyo.Constraint(rule=soc_end)
        
class white_good(device) : 
    def __init__(self, start_pref, cycle_length, time_range, power_needed, **kwargs) : 
        power_range = [[power_needed, power_needed] for k in range(len(start_pref))]
        time_use = [[start_pref[k], start_pref[k] + cycle_length[k]] for k in range(len(start_pref))]
        super().__init__(power_range, time_use, time_range, **kwargs)
        
        
class fixed(device) :
    def __init__(self, power_profile, **kwargs) : 
        # One power value per hour
        power_range = []
        time_use = []
        for k in range(len(power_profile)) : 
            if k == 0 : 
                power_range.append([power_profile[k], power_profile[k]])
                start_time = k
            if power_profile[k] != power_range[-1][0] : 
                time_use.append([start_time, k-1])
                power_range.append([power_profile[k], power_profile[k]])
                start_time = k
        if start_time != len(power_profile) - 1 : 
            time_use.append([start_time, len(power_profile) - 1])
            
        time_range = [[0, 0] for k in range(len(time_use))]
        super().__init__(power_range, time_use, time_range, **kwargs)
        

class flex(device) : 
    def __init__(self, power_range, total_time, **kwargs) : 
        time_use = [[0, total_time]]
        time_range = [[0, 0]]
        super().__init__(power_range, time_use, time_range, total_time=total_time, **kwargs)
        
class AoN(device) : 
    def __init__(self, power_needed, total_time, **kwargs) :
        # We will need to check that if we put 2 at the same time it will consume only one.
        # If AoN relou -> change by flex being the number of on equipment, then almost linear.
        time_use = [[k, k+1] for k in range(total_time)]
        time_range = [[0, total_time] for k in range(total_time)]
        power_range = [[power_needed, power_needed] for k in range(total_time)]
        super().__init__(power_range, time_use, time_range, total_time=total_time, **kwargs)
        
class batterie(device) : 
    def __init__(self, p_range, E_range, total_time, **kwargs) : 
        t_use = [[k, k+1] for k in range(total_time)]
        power_range = [p_range for k in range(len(t_use))]
        time_range = [[0, 0] for k in range(len(t_use))]
        super().__init__(power_range, t_use, time_range, total_time=total_time, **kwargs)
        self.E_range = E_range # [Emin, Emax]
        
        # + custom constraints soc : E_min <= E <= E_max + suivie E(t) = E(t - 1) + P delta t
        self.charge_eff = kwargs.get('charge_eff', 0.98)
        self.dcharge_eff = kwargs.get('dcharge_eff', 0.98)
        self.E0 = kwargs.get('E0', 0.5 * (self.E_range[0] + self.E_range[1]))
        self.E = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(self.E_range[0], self.E_range[1]))
        self.P_plus = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(0, self.p_range[1]))
        self.P_minus = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(0, -self.p_range[0]))
      
        self.mod.E = self.E 
        self.mod.P_plus = self.P_plus
        self.mod.P_minus = self.P_minus
        self.generate_bat_constraint()

class EV(device) : 
    def __init__(self, p_range, E_range, time_home, E_min, E_end, **kwargs) : 
        # time_home = [[t0, tend] each time the EV is home]
        # E_min = [Emin each time the EV needs to go (tend)]
        power_range = [p_range for k in range(len(time_home))]
        time_range = [[0, 0] for k in range(len(time_home))]
        super().__init__(power_range, time_home, time_range, **kwargs)
        self.E_min = E_min
        self.E_range = E_range
        self.E_end
        
        self.charge_eff = kwargs.get('charge_eff', 0.98)
        self.dcharge_eff = kwargs.get('dcharge_eff', 0.98)
        self.E0 = kwargs.get('E0', 0.5 * (self.E_range[0] + self.E_range[1]))
        self.E = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(self.E_range[0], self.E_range[1]))
        self.P_plus = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(0, self.p_range[1]))
        self.P_minus = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(0, -self.p_range[0]))
      
        self.mod.E = self.E 
        self.mod.P_plus = self.P_plus
        self.mod.P_minus = self.P_minus
        self.generate_bat_constraint(E_end=E_end)
        
if __name__ == '__main__' :
    # Test device initialization
    power_range = [[10, 20], [-10, 10]]
    time_use = [[1, 2], [3, 4]]
    time_range = [[-1, 1], [-2, 2]]
    dev = device(power_range, time_use, time_range)
    dev.mod.p_con_l.pprint()
    dev.mod.p_con_u.pprint()
    dev.mod.t_con_l.pprint()
    dev.mod.t_con_u.pprint()
    
    # Faudra tester un peu plus tout le reste mais on verra plus tard parce que flemme
    
    