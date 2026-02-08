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
        self.dico_used_time = {}
        try : 
            assert(len(self.p_range) == len(self.t_use))
            assert(len(self.p_range) == len(self.t_range))
        except : 
            print("Warning : wrong size in the list when initializing device")
        
        time=0
        c = 0
        while time < self.total_time : 
            t0, tend = self.t_use[c]
            tmin = max(0, t0 + self.t_range[c][0])
            tmax = min(self.total_time, tend + self.t_range[c][1]+1)
            if time == t0 : 
                for t in range(tmin, tmax):
                    self.dico_used_time[t] = c
                    time+=1
                c += 1
            else : 
                time+=1
        
        # ouput definition
        mod = pyo.ConcreteModel()
        self.mod = mod
        self.dual = pyo.RangeSet(0, 1)
        self.time_total_set = pyo.RangeSet(0, self.total_time - 1)
        self.t_set = pyo.RangeSet(0, len(self.p_range) - 1)  # set of time interval
        # self.total_time_set = pyo.RangeSet(0, self.total_time)
        self.allocated_power = pyo.Var(self.t_set, within=pyo.Reals)
        # self.opti_t_use = pyo.Var(self.t_set, self.dual, within=pyo.Reals)  # t0 and tend for each time interval
        
        self.Pcons = pyo.Var(self.time_total_set, within=pyo.Reals, initialize=[0 for t in self.time_total_set])
        self.mod.Pcons = self.Pcons
        
        # excesses 
        self.p_excess_l = pyo.Var(self.t_set, within=pyo.NonNegativeReals, initialize=[0 for t in self.t_set])
        self.p_excess_u = pyo.Var(self.t_set, within=pyo.NonNegativeReals, initialize=[0 for t in self.t_set])
        
        self.p_excess_l_all = pyo.Var(self.time_total_set, within=pyo.NonNegativeReals, initialize=[0 for t in self.time_total_set])
        self.p_excess_u_all = pyo.Var(self.time_total_set, within=pyo.NonNegativeReals, initialize=[0 for t in self.time_total_set])
        
        
        self.power_score = 0
        self.time_score = 0 
        # self.p_con_lower = None
        # self.p_con_u = None
        # self.t_con_lower = None
        # self.t_con_u = None

        mod.dual = self.dual
        mod.t_set = self.t_set
        mod.allocated_power = self.allocated_power
        mod.p_excess_l = self.p_excess_l
        mod.p_excess_u = self.p_excess_u
        mod.p_excess_l_all = self.p_excess_l_all
        mod.p_excess_u_all = self.p_excess_u_all
        
        # For now we fix the excess to 0, we will see later if we add a penalization for it or not.
        for k in self.mod.t_set : 
            mod.p_excess_l[k].fix(0)
            mod.p_excess_u[k].fix(0)
        
        self.variable = not(kwargs.get('is_param', False))
        if self.variable :
            self.generate_power_constraint()
        else : 
            for k in self.mod.t_set : 
                mod.allocated_power[k].fix(self.p_range[k][1])
                mod.opti_t_use[k, 0].fix(self.t_use[k][0])
                mod.opti_t_use[k, 1].fix(self.t_use[k][1])
                mod.p_excess_l[k].fix(0)
                mod.p_excess_u[k].fix(0)
                # mod.t_excess_l[k, 0].fix(0)
                # mod.t_excess_l[k, 1].fix(0)
                # mod.t_excess_u[k, 0].fix(0)
                # mod.t_excess_u[k, 1].fix(0)

        
    def generate_power_constraint(self) : 
        
        def power_constraint_lower(mod, t_set) : 
            # print("Bonjour", self.p_range)
            return (mod.allocated_power[t_set] + mod.p_excess_l[t_set] >= self.p_range[t_set][0])
        def power_constraint_upper(mod, t_set) :
            return mod.allocated_power[t_set] <= self.p_range[t_set][1] + mod.p_excess_u[t_set]
        
        self.mod.p_con_l = pyo.Constraint(self.mod.t_set, rule=power_constraint_lower)
        self.mod.p_con_u = pyo.Constraint(self.mod.t_set, rule=power_constraint_upper)
        
        def full_time_excess_l(mod, t) : 
            if t in self.dico_used_time : 
                return mod.p_excess_l_all[t] == mod.p_excess_l[self.dico_used_time[t]]
            else : 
                return mod.p_excess_l_all[t] == 0
        def full_time_excess_u(mod, t) : 
            if t in self.dico_used_time : 
                return mod.p_excess_u_all[t] == mod.p_excess_u[self.dico_used_time[t]]
            else : 
                return mod.p_excess_u_all[t] == 0
        self.mod.p_excess_total_l = pyo.Constraint(self.time_total_set, rule=full_time_excess_l)
        self.mod.p_excess_total_u = pyo.Constraint(self.time_total_set, rule=full_time_excess_u)
        
        # def time_constraint_lower(mod, t_set, dual) :
        #     return mod.opti_t_use[t_set, dual] - self.t_use[t_set][dual] + mod.t_excess_l[t_set, dual] >= self.t_range[t_set][dual]
        # def time_constraint_upper(mod, t_set, dual) :
        #     return self.opti_t_use[t_set, dual] - self.t_use[t_set][dual] <= self.t_range[t_set][dual] + mod.t_excess_u[t_set, dual] 
        # self.mod.t_con_l = pyo.Constraint(self.mod.t_set, self.mod.dual, rule=time_constraint_lower)
        # self.mod.t_con_u = pyo.Constraint(self.mod.t_set, self.mod.dual, rule=time_constraint_upper)
        
    def generate_bat_constraint(self, E_end=None) : 
        mod = self.mod
        # Initialization of the state of charge  
        
        # Soc constraint
        def soc(mod, t) :
            if t == 0 : 
                return mod.E[t] == self.E0[0]
            return mod.E[t] == mod.E[t - 1] + mod.P_plus[t] * self.charge_eff - mod.P_minus[t] / self.dcharge_eff
            
        mod.soc_con = pyo.Constraint(self.mod.home_set, rule=soc)

        def power_constraint(mod, t) :
            if t == 0 : 
                return mod.allocated_power[t] == 0
            return mod.allocated_power[t] == mod.P_plus[t] - mod.P_minus[t] 
            # Pour l'instant on fait comme ça pour rester un max linéaire, on verra si on ajoute une fonction de pénalisation
        mod.pow_con = pyo.Constraint(self.t_set, rule=power_constraint)
        
        def Pcons_constraint(mod, t) : 
            return mod.Pcons[t] == mod.allocated_power[t]
        mod.pow_con_home = pyo.Constraint(self.mod.home_set, rule=Pcons_constraint)
        
        def Pcons_0_constraint(mod, t) : 
            return mod.Pcons[t] == 0
        mod.pow_con_not_home = pyo.Constraint(self.mod.not_home_set, rule=Pcons_0_constraint)
        
        if E_end is None : 
            E_end = self.E0
            
        def soc_end(mod) :
            return mod.E[self.t_set.at(-1)] == E_end
        if not self.E_min : 
            mod.end_con = pyo.Constraint(rule=soc_end)
        
        def start_constraint(mod, t) : 
            c = 0 
            for i in mod.start_set :
                if i == t :
                    break 
                else : 
                    c += 1
            return mod.E[t] == self.E0[c]
        
        def end_constraint(mod, t) : 
            c = 0 
            for i in mod.end_set :
                if i == t :
                    break 
                else : 
                    c += 1
            return mod.E[t] == self.E_min[c]
        
        mod.start_con = pyo.Constraint(self.start_set, rule=start_constraint)
        mod.end_con = pyo.Constraint(self.end_set, rule=end_constraint)
            
            
        
        
class white_good(device) : 
    def __init__(self, start_pref, cycle_length, time_range, power_needed, **kwargs) : 
        power_range = [[power_needed[k], power_needed[k]] for k in range(len(start_pref))]
        time_use = [[start_pref[k], start_pref[k] + cycle_length[k]] for k in range(len(start_pref))]
        super().__init__(power_range, time_use, time_range, **kwargs)
        self.generate_spec_constraint()
        
    def generate_spec_constraint(self) : 
        """
        On va utiliser 2 contraintes 
        
        - sum w_sk = 1 avec w_sk des binaires sur [tmin, tmax]*[0, tmax-tmin]
        
        - sum_{t<=k<=T} sum{t<=s<=t+k} p[2t - s]*w_sk pour la puissance (for all t).
        
        Faudra ajouter les excès de temps, mais je pense qu'il faudra se faire mal à la tête donc pour le moment on fait sans.
        Il pourrait y avoir un truc avec une somme de binaire avec un coef qui vaut 0 dans le time range genre.
        """
        
        for instant in self.mod.t_set : 
            # print("\n INSTANT %d" % instant)
            t_min = max(0, self.t_use[instant][0] + self.t_range[instant][0])
            t_max = min(self.t_use[instant][1] + self.t_range[instant][1], self.total_time-1)
            cycle_length = self.t_use[instant][1] - self.t_use[instant][0]
            set_t0 = pyo.RangeSet(t_min,t_max-cycle_length)
            bin_t0 = pyo.Var(set_t0, within=pyo.Boolean)
            starting_time_plus = pyo.Var(within=pyo.NonNegativeReals)
            starting_time_minus = pyo.Var(within=pyo.NonNegativeReals)
            
            setattr(self.mod, f"set_t0_{instant}", set_t0)
            # setattr(self.mod, f"set_d_{instant}", set_t0)
            setattr(self.mod, f"bin_{instant}", bin_t0)
            setattr(self.mod, f"starting_time_plus_{instant}", starting_time_plus)
            setattr(self.mod, f"starting_time_minus_{instant}", starting_time_minus)
            
            time_con= pyo.Constraint(expr=sum(bin_t0[t] for t in set_t0)==1)
            setattr(self.mod, f"bin_t_con_{instant}", time_con)
            starttime_con_plus = pyo.Constraint(expr=sum((t+1)*bin_t0[t] for t in set_t0)- self.t_use[instant][0] <= starting_time_plus)
            setattr(self.mod, f"starttime_con_plus_{instant}", starttime_con_plus)
            starttime_con_minus = pyo.Constraint(expr=self.t_use[instant][0] - sum((t+1)*bin_t0[t] for t in set_t0) <= starting_time_minus)
            setattr(self.mod, f"starttime_con_minus_{instant}", starttime_con_minus)
            
            # set_t0.display()
            def rule(mod, t) :
                S = 0
                # print("euh", t, cycle_length + t)
                for p in range(max(t-cycle_length, t_min), min(t, t_max-cycle_length+1)) :
                    # print("hmm", p)
                    S += self.p_range[instant][0]*getattr(mod, f"bin_{instant}")[p]
                return mod.Pcons[t] == S
            pow_con = pyo.Constraint(self.time_total_set, rule=rule)
            setattr(self.mod, f"bin_p_con_{instant}", pow_con)
            
            def rule_confort(mod) : 
                return starting_time_plus + starting_time_minus
            confort_con = pyo.Expression(rule=rule_confort)
            setattr(self.mod, f"confort_con_{instant}", confort_con)
        
        self.mod.t_confort_lvl = pyo.Expression(expr = sum(getattr(self.mod, f"confort_con_{instant}") for instant in self.mod.t_set))
            
            # set_d = pyo.RangeSet(0,t_max-t_min)
            # bin_t0_d = pyo.Var(set_t0, set_d, within=pyo.Boolean)
            # time_con= pyo.Constraint(expr=sum(bin_t0_d[t, d] for t in set_t0 for d in set_d)==1)
            # à vérifier
            # Pour si on change le cycle_length
            # def rule(mod, t) : 
            #     S = 0
            #     for k in range(t_max-t_min-t+1) :
            #         for p in range(t, t+k+1) : 
            #             S += mod.P_range[0]*getattr(mod, f"bin_{instant}")[p, k]
            #     return (mod.Pcons[t] == S)
            
        self.mod.p_con_l.deactivate()
        self.mod.p_con_u.deactivate()
        self.mod.p_excess_l.fix(0)
        self.mod.p_excess_u.fix(0)
        return
            
        
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
        # print(time_use, power_range)
        time_range = [[0, 0] for k in range(len(time_use))]
        super().__init__(power_range, time_use, time_range, **kwargs)
        
        def rule(mod, t) :
            return mod.Pcons[t] == power_profile[t] 
        total_t_index = pyo.RangeSet(0, len(power_profile)-1)
        self.mod.pow_con = pyo.Constraint(total_t_index, rule=rule)
        return
    
class flex(device) : 
    def __init__(self, power_range, total_time, **kwargs) : 
        total_time = kwargs.get("total_time", 24)
        self.total_time = total_time
        time_use = [[k, k+1] for k in range(total_time)]
        time_range = [[0, 0] for k in range(total_time)]
        super().__init__(power_range, time_use, time_range, **kwargs)
        self.generate_spec_constraint()

    def generate_spec_constraint(self) : 
        def rule(mod, t) : 
            return mod.Pcons[t] == mod.allocated_power[t]
        self.mod.pow_con = pyo.Constraint(self.mod.t_set, rule=rule)
        
        def confort_rule(mod, t) :
            return self.p_range[t][1] - mod.allocated_power[t]
        self.mod.p_confort_lvl = pyo.Expression(self.t_set, rule=confort_rule)
        
class AoN(device) : 
    def __init__(self, power_needed, time_use_param, **kwargs) :
        # We will need to check that if we put 2 at the same time it will consume only one.
        # If AoN relou -> change by flex being the number of on equipment, then almost linear.
        total_time = kwargs.get("total_time", 24)
        self.total_time = total_time
        time_use = [[k, k+1] for k in range(total_time)]
        time_range = [[0, total_time] for k in range(total_time)]
        power_range = [[power_needed, power_needed] for k in range(total_time)]
        self.on_off_param = time_use_param # [[t0, tend] list]
        super().__init__(power_range, time_use, time_range, **kwargs)
        self.generate_spec_constraint()
        
    def generate_spec_constraint(self) : 
        """
        Ici on a un vecteur de binaires pour quand ça s'active ou pas.
        """
        self.mod.on_off = pyo.Var(self.mod.t_set, within=pyo.Boolean)
        if not self.variable : 
            for t0, tend in self.on_off_param : 
                for k in range(t0, tend) : 
                    self.mod.on_off[k].fix(1)
            for t in self.mod.t_set : 
                if not self.mod.on_off[t].fixed:
                    self.mod.on_off[k].fix(0)

        # else : 
        #     # to write 
        def rule(mod, t) : 
            return mod.Pcons(t) == sum(mod.on_off[k] for k in mod.t_set)*self.p_range[0]
        self.mod.pow_con = pyo.Constraint(self.mod.t_set, rule=rule)
        
        self.mod.p_con_l.deactivate()
        self.mod.p_con_u.deactivate()
        self.mod.p_excess_l.fix(0)
        self.mod.p_excess_u.fix(0)
        return

        
        
class batterie(device) : 
    def __init__(self, p_range, E_range, **kwargs) : 
        total_time = kwargs.get("total_time", 24)
        self.total_time = total_time
        t_use = [[k, k+1] for k in range(total_time)]
        power_range = [p_range for k in range(len(t_use))]
        time_range = [[0, 0] for k in range(len(t_use))]
        super().__init__(power_range, t_use, time_range, **kwargs)
        self.E_range = E_range # [Emin, Emax]
        
        # + custom constraints soc : E_min <= E <= E_max + suivie E(t) = E(t - 1) + P delta t
        self.charge_eff = kwargs.get('charge_eff', 0.98)
        self.dcharge_eff = kwargs.get('dcharge_eff', 0.98)
        self.E0 = [kwargs.get('E0', 0.5 * (self.E_range[0] + self.E_range[1]))]
        self.E = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(self.E_range[0], self.E_range[1]))
        self.P_plus = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(0, p_range[1]))
        self.P_minus = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(0, -p_range[0]))
        self.mod.not_home_set = pyo.RangeSet()
        self.mod.home_set = pyo.RangeSet(0, self.total_time - 1) # Exist because same function for EV
        self.start_set = pyo.Set(initialize=[0])
        self.end_set = pyo.Set()
      
        self.mod.E = self.E 
        self.mod.P_plus = self.P_plus
        self.mod.P_minus = self.P_minus
        self.generate_bat_constraint()

class EV(device) : 
    def __init__(self, p_range, E_range, time_home, E0s, E_min, E_end, **kwargs) : 
        # time_home = [[t0, tend] each time the EV is home]
        # E_min = [Emin each time the EV needs to go (tend)]
        # print("BONJOUR")
        total_time = kwargs.get("total_time", 24)
        t_use = [[k, k+1] for k in range(total_time)]
        power_range = [p_range for k in range(total_time)]
        time_range = [[0, 0] for k in range(total_time)]
        super().__init__(power_range, t_use, time_range, **kwargs)
        self.E_min = E_min
        self.E_range = E_range
        self.E_end = E_end
        
        self.charge_eff = kwargs.get('charge_eff', 0.98)
        self.dcharge_eff = kwargs.get('dcharge_eff', 0.98)
        self.E0 = E0s
        self.E = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(self.E_range[0], self.E_range[1]))
        self.P_plus = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(0, p_range[1]))
        self.P_minus = pyo.Var(self.t_set, within=pyo.NonNegativeReals, bounds=(0, -p_range[0]))
        
        home_set = []
        start_set = []
        end_set = []
        not_home_set = []
        time = 0
        c = 0
        while time < self.total_time : 
            t0, tend = time_home[c]
            if time == t0 : 
                start_set.append(t0)
                end_set.append(tend-1)
                for t in range(t0, tend):
                    home_set.append(t)
                    time+=1
                c += 1
            else : 
                not_home_set.append(time)
                time+=1
        

        self.mod.home_set = pyo.Set(initialize=home_set)
        self.mod.not_home_set = pyo.Set(initialize=not_home_set)
        
        self.start_set = pyo.Set(initialize=start_set)
        self.mod.start_set = self.start_set
        self.end_set = pyo.Set(initialize=end_set)
        self.mod.end_set = self.end_set
        
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
    
    