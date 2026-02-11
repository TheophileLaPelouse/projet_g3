from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.colors import LightSource
from matplotlib.ticker import LinearLocator
from ..community import pyo


def plot_3d(x, y, z, title="3D Plot", xlabel="X-axis", ylabel="Y-axis", zlabel="Z-axis", save_path=None):
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    ax.plot(x, y, z, marker='+', linestyle='', color='b', label="Data Points")
    ax.set_title(title)
    ax.set_xlabel(xlabel)
    ax.set_ylabel(ylabel)
    ax.set_zlabel(zlabel)
    ax.legend()
    if save_path:
        plt.savefig(save_path)
    plt.show()
    return fig, ax


# def plot_2d(x, y, title="2D Plot", xlabel="X-axis", ylabel="Y-axis", save_path=None):
#     fig, ax = plt.subplot()
#     plt.plot(x, y, 
#     plt.title(title)
#     plt.xlabel(xlabel)
#     plt.ylabel(ylabel)
#     if save_path:
#         plt.savefig(save_path)
#     plt.show()
#     return fig, ax

def plot_hexagon_objective(values, members, title="Radar Objective Visualization", **kwargs):
    """
    Plot a hexagon radar chart based on objective values.

    Args:
        values (dictionnary): A dictionnary with list for each member and their corresponding values
        members (list): A list of member names, in the same order as the values in the dictionary.
        title (str): Title of the plot.
    """
    
    first_key = next(iter(values.keys()))
    n = len(values[first_key])
    # Define the angles for the vertices of the hexagon
    angles = [2*np.pi*(k/n) for k in range(n)]
    
    print(n, angles)
    # Create the plot
    fig, ax = plt.subplots(subplot_kw=dict(polar=True))
    colors = kwargs.get("colors", ['b', 'r', 'g', 'm', 'c'])
    c = 0
    for key in values :
        color = colors[c % len(colors)]
        c+=1
        # Plot the hexagon
        vals = [values[key][key2][0] for key2 in values[key]]
        ax.plot(angles, vals, color=color, linewidth=1, linestyle='solid', label=key)
        ax.fill(angles, vals, color=color, alpha=0.25)

    # Add labels to the vertices
    ax.set_xticks(angles)
    ax.set_xticklabels(members)

    # Set the range for the radial axis
    # ax.set_ylim(0, 1)

    # Add title and legend
    ax.set_title(title, va='bottom')
    ax.legend(loc="upper right")#, bbox_to_anchor=(1.1, 1.1))

    # Show the plot
    plt.show()
    return fig, ax
    
def plot_power_curves(total_time, deltat, **kwargs) : 
    time = [t*deltat for t in range(total_time)]
    powers = kwargs.get("powers", {})
    title = kwargs.get("title", "Power Curves")
    xlabel = kwargs.get("xlabel", "Time (h)")
    ylabel = kwargs.get("ylabel", "Power (W)")
    
    fig, ax = plt.subplots()
    c = 0
    for label, power in powers.items() :
        if isinstance(power, (pyo.Var, pyo.Expression)) : 
            power_values = [pyo.value(power[t]) for t in range(total_time)]
        else : 
            power_values = power
        markers = ['+', 'x', 'o', 's', 'D', '^', '>']
        marker = markers[c % len(markers)]
        c+=1
        ax.plot(time, power_values, label=label, marker=marker, linestyle='-', linewidth=1)
    ax.set_title(title)
    ax.set_xlabel(xlabel)
    ax.set_ylabel(ylabel)
    ax.grid(True)
    ax.legend()
    plt.show()
    
    path_to_save = kwargs.get("save_path", None)
    if path_to_save : 
        plt.savefig(path_to_save)
    return fig, ax

    
if __name__ == "__main__":
    # Example usage
    x = [10, 20, 30, 40, 50]
    y = [15, 25, 35, 45, 55]
    z = [5, 11, 10, 20, 25]

    # plot_3d(x, y, z)
    
    # x = [0, 1, 0]
    # y = [0, 0, 1]
    # z = [0, 1, 1]
    # plot_3d_shape(x, y, z)
    
    # x = [0, 1, 0, 1]
    # y = [0, 0, 1, 1]
    # z = [0, 1, 1, 0]
    # plot_3d_filled(x, y, z)
    fig, ax = plot_3d(x, y, z)
    
    # X = [[0,1], [0, 1], [0.5, 0], [1,0.5]]
    # Y = [[0, 0], [1, 1], [0.5, 0], [0, 0.5]]
    # Z = [[0, 0], [0, 0], [1, 0], [0, 1]]
    # fig, ax, c = plot_3d_surface_(X, Y, Z)

    # plot_3d_square_with_surface()
    
    # objective_values = [0.8, 0.6, 0.9, 0.7, 0.5]  # Normalized objective values (0 to 1)
    # member_labels = ["Eco", "Enviro", "Comfort", "Auto", "Other"]
    # plot_hexagon_objective(objective_values, labels=member_labels)
    
    # fig, ax = plot_3d(x, y, z)
    
    # X = np.arange(-5, 5, 0.25)
    # xlen = len(X)
    # Y = np.arange(-5, 5, 0.25)
    # ylen = len(Y)
    # X, Y = np.meshgrid(X, Y)

