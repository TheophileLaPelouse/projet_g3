from .community.device import device, white_good, flex, EV, fixed, AoN
from .community.member import member
from .community.community import community

def define_devices(list_args) : 
    devices = []
    for args in list_args : 
        if args["type"] == "white_good" : 
            devices.append(white_good(**args["parameters"]))
        elif args["type"] == "flex" :
            devices.append(flex(**args["parameters"]))
        elif args["type"] == "EV" :
            devices.append(EV(**args["parameters"]))
        elif args["type"] == "fixed" :
            devices.append(fixed(**args["parameters"]))
        elif args["type"] == "device" :
            devices.append(device(**args["parameters"]))
        elif args["type"] == "AoN" :
            devices.append(AoN(**args["parameters"]))
    return devices

def define_members(list_args) : 
    members = []
    for args in list_args : 
        devices = define_devices(args["devices"])
        members.append(member(devices=devices, **args["parameters"]))
    return members

def define_community(members, **kwargs) : 
    return community(members, **kwargs)