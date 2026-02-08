import math
from functools import reduce

def calc_enviro(Pgrid, Pex, Pself, **kwargs) : 
    # Peut être ajouter test pour si viens d'un modèle pyomo ou pas 
    deltat = kwargs.get("deltat", 1)
    carbone_grid = kwargs.get("carbone_grid", 1)
    carbone_commu = kwargs.get("carbone_commu", 0.5)
    ref_value = kwargs.get("ref", 1)
    return (
        sum(Pgrid[k]*deltat*carbone_grid for k in range(len(Pgrid))) 
        + sum(Pex[k]*deltat*carbone_commu for k in range(len(Pex)))
        + sum(Pself[k]*deltat*carbone_commu for k in range(len(Pself)))
        )/ref_value

def calc_auto(Pgrid, **kwargs) : 
    deltat = kwargs.get("deltat", 1)
    coef_auto = kwargs.get("coef_auto", 1)
    ref_value = kwargs.get("ref", 1)
    return sum(Pgrid[k]*deltat*coef_auto for k in range(len(Pgrid)))/ref_value

def calc_eco(Pgrid_plus, Pgrid_minus, Pex, **kwargs) : 
    deltat = kwargs.get("deltat", 1)
    cost_grid_buy = kwargs.get("cost_grid_buy", 1)
    cost_grid_sell = kwargs.get("cost_grid_sell", -0.5)
    cost_ex = kwargs.get("cost_ex", 0)
    ref_value = kwargs.get("ref", 1)
    return (
        sum(Pgrid_plus[k]*deltat*cost_grid_buy for k in range(len(Pgrid_plus))) 
        + sum(Pex[k]*deltat*cost_ex for k in range(len(Pex)))
        + sum(Pgrid_minus[k]*deltat*cost_grid_sell for k in range(len(Pgrid_minus)))
        )/ref_value

def calc_pena_pow(excess_l, excess_u, **pena_args) : 
    coef = pena_args.get("coef_pena", 1)
    ref_value = pena_args.get("ref", 1)
    return sum(excess_l[t] + excess_u[t] for t in range(len(excess_l)))*coef/ref_value

def calc_confort(p_confort, t_confort, **kwargs) : 
    coef_p = kwargs.get("coef_p", 1)
    coef_t = kwargs.get("coef_t", 1)
    ref_value = kwargs.get("ref", 1)
    return (sum(p_confort[t]*coef_p  for t in range(len(p_confort))) 
            + t_confort*coef_t*len(p_confort))/ref_value
    