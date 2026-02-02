from . import pyo
from .utils import calc_auto, calc_eco, calc_enviro
from ..opti.solving import solve_model

class member : 
    def __init__(self, devices, socio, community, id_, deltat=1, total_time=24) :
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
        self.P_cons 
        self.P_exchange
        
    def calc_profile(self, deltat=1) : 
        """
        Take all the devices and compute the consumed power over time as well as the total value
        """
        Pcons = pyo.Var(self.time_index, within=pyo.Reals)
        
        for d in self.devices : 
            for t in self.time_index : 
                Pcons[t] += d.calc_profile()
        
        self.P_cons = Pcons
        self.mod.P_cons = Pcons
        
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
        
        P_grid = self.P_cons - self.P_exchange 
        
        functions = kwargs.get("functions", [])
        eco_args = kwargs.get("eco", {})
        enviro_args = kwargs.get("enviro", {})
        auto_args = kwargs.get("auto", {})
        
        self.mod.obj = pyo.Objective(expr=calc_eco(P_grid, self.P_exchange, **eco_args)*self.socio[0]
                                     + calc_enviro(P_grid, self.P_exchange, **enviro_args)*self.socio[1]
                                     + calc_auto(P_grid, self.P_exchange, **auto_args)*self.socio[2]
                                     + sum(f(self.P_cons, self.P_exchange, P_grid) for f in functions)
                                     )
        return
    
    def create_agent(self) :
        return
    
    def self_optimize(self, solver, **options) :   
        results = solve_model(self.mod, solver, **options)
        return results