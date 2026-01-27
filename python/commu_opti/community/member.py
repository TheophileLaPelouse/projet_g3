from . import pyo

class member : 
    def __init__(self, devices, socio, community) :
        self.devices = devices 
        self.socio = socio 
        self.commu = community
        self.mod = pyo.ConcreteModel()
        self.agent = None
        
    def calc_profile(self) : 
        return
    
    def build_model(self) :
        return
    
    def create_agent(self) :
        return
    
    def self_optimize(self) : 
        return