
from . import pyo, SolverFactory

def solve_model(model, solver="gurobi", **options) : 
    if not options.get("solver_io") : 
        solver = SolverFactory(solver)
    else : 
        solver = SolverFactory(solver, options.pop("solver_io"))
    
    for key in options : 
        solver.options[key] = options    
    results = solver.solve(model)
    return results