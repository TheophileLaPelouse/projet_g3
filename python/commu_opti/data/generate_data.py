from . import pd
from . import rd

"""
Deux manière de voir les choses, 

1 : Je fait un truc random profile de device par profile de device. 
Problème si je fais ça on risque d'avoir des données très peu réalistes

2 : J'imagine une fonction qui génère les données en fonction d'un profile de présence 
et c'est ce profile de présence qui va varier. Dans ces cas là pour pas créer un truc pour chaque device
On peut prendre un profile de conso d'une maison classique 
et y soustraire le chauffage et autres appareils définis maison

"""

def generate_n_profiles(n, profile, **kwargs) : 
    """
    profile : {
        "P wanted" : []
        "P range" : []
        "Time used" : []
        "Time range" : []
    } 
    As for defining devices model
    """
    
    coef_time_in_day = kwargs.get("t_day", 0)
    coef_time_range = kwargs.get("t_range", 0)
    coef_pow_wanted = kwargs.get("p_wanted", 0)
    coef_pow_range = kwargs.get("p_range", 0)
    
    
    profiles = []
    for k in range(n) : 
        