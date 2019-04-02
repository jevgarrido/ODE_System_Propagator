function [y] = simple_exp_exact(t)

    global MAIN CONSTANTS

    y =  reshape(MAIN.y_zero, [], 1) * exp(CONSTANTS.a*t);
    
return