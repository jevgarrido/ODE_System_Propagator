function [dydt] = oscillatory_dynamics(~,y)
 
    global CONST
    
    k = CONST.k;
    c = CONST.c;
    m = CONST.m;
    
    dydt    = [ 0, 1; -k/m, -c/m ] * reshape(y, [], 1);
return