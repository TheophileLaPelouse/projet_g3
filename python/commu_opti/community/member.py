from . import pyo
from .utils import calc_auto, calc_eco, calc_enviro, calc_pena_pow
from ..opti.solving import solve_model

class member : 
    def __init__(self, devices, production_profile, socio, community, id_, deltat=1, total_time=24) :
        self.devices = devices 
        self.socio = socio 
        self.id = id_
        self.commu = community
        self.mod = pyo.ConcreteModel()
        self.agent = None
        self.deltat = deltat
        self.total_time = total_time
        self.time_index = pyo.RangeSet(0, self.total_time - 1)
        self.mod.time_index = self.time_index
        self.P_prod = production_profile
        self.P_cons = None 
        self.P_bat = None
        self.P_exchange = None
        
    def calc_profile(self, deltat=1) : 
        """
        Take all the devices and compute the consumed power over time as well as the total value
        """
        Pcons = pyo.Var(self.time_index, within=pyo.Reals)
        Pbat = pyo.Var(self.time_index, within=pyo.Reals)
        p_excess_l = pyo.Var(self.time_index, within=pyo.Reals)
        p_excess_u = pyo.Var(self.time_index, within=pyo.Reals)
        
        for d in self.devices : 
            for t in self.time_index : 
                if hasattr(d.mod, "Pbat") : 
                    Pbat[t] += d.mod.Pbat[t]
                else : 
                    Pcons[t] += d.mod.Pcons[t]
                p_excess_l += d.mod.p_excess_l
                p_excess_u += d.mod.p_excess_u
                
                
        self.P_bat = Pbat
        self.P_cons = Pcons
        self.mod.P_bat = Pbat
        self.mod.P_cons = Pcons
        self.mod.p_excess_u = p_excess_u
        self.mod.p_excess_l = p_excess_l
        
    def fetch_P_exchange(self) :
        self.P_exchange = sum(self.commu.P_exchange[k, self.id] for k in self.commu.members_id)
    
    def build_model(self, **kwargs) :
        """
        Du coup on aggrège tous les modèles comme on a vu dans test, 
        et on crée fonction d'objectif en fonction de puissance consommée
        """ 
        
        # Add devices models
        for k in range(len(self.devices)) : 
            setattr(self.mod, f"device{k}", self.devices[k].mod)
        
        self.fetch_P_exchange()
        self.calc_profile()
        
        if self.P_cons is None or self.P_exchange is None :
            P_grid = None
        else : 
            P_grid = self.P_cons + self.P_bat - self.P_exchange 
        
        functions = kwargs.get("functions", []) # format = [f(pcons, pbat, pexchange pgrid), ...]
        eco_args = kwargs.get("eco", {})
        enviro_args = kwargs.get("enviro", {})
        auto_args = kwargs.get("auto", {})
        pena_args = kwargs.get("pena", {})
        
        self.mod.obj = pyo.Objective(expr=calc_eco(P_grid, self.P_exchange, **eco_args)*self.socio[0]
                                     + calc_enviro(P_grid, self.P_exchange, **enviro_args)*self.socio[1]
                                     + calc_auto(P_grid, self.P_exchange, **auto_args)*self.socio[2]
                                     + sum(f(self.P_cons, self.P_bat, self.P_exchange, P_grid) for f in functions)
                                     + calc_pena_pow(self.mod.p_excess_l, self.mod.p_excess_u, **pena_args)
                                     )
        return
    
    def create_agent(self) :
        return
    
    def self_optimize(self, solver, **options) :   
        results = solve_model(self.mod, solver, **options)
        return results