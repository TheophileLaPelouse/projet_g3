import math
from functools import reduce

def calc_enviro(Pgrid, Pex, deltat = 1, carbone_grid=0.1, carbone_commu=0.05) : 
    # Peut être ajouter test pour si viens d'un modèle pyomo ou pas 
    
    return (
        sum(Pgrid[k]*deltat*carbone_grid for k in range(len(Pgrid))) 
        + sum(Pex[k]*deltat*carbone_commu for k in range(len(Pex)))
        )

def calc_auto(Pgrid, Pex, deltat = 1, coef = 1) : 
    return sum(Pgrid[k] - Pex[k]*deltat*coef  if Pgrid > Pex else 0 for k in range(len(Pgrid)))

def calc_eco(Pgrid, Pex, deltat = 1, cost_grid=0.1, cost_ex=0) : 
    return (
        sum(Pgrid[k]*deltat*cost_grid for k in range(len(Pgrid))) 
        + sum(Pex[k]*deltat*cost_ex for k in range(len(Pex)))
        )

