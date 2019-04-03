function [dydt] = simple_exp_dynamics(~,y)

    global CONST
    
    a = CONST.a;
    
    dydt = a*reshape(y, [], 1);
return