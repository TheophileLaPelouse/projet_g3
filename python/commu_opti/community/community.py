from . import pyo

class community : 
    def __init__(self, members) : 
        self.agent = None
        self.mod = pyo.ConcreteModel()
        for m in members : 
            self.add_member(m)
        
    def build_model(self) : 
        # Aggregate the different model in one.
        return 
    
    def create_agent(self) : 
        # Create just the agent for the community and link the members
        return 
    
    def create_agents(self) : 
        # Agents for all member at the time
        return
    
    def add_member(self, member) : 
        return
    
    def optimize(self, **kwargs) : 
        return