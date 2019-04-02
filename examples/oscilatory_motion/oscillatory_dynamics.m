function [dydt] = oscillatory_dynamics(~,y)
 
    global CONST
    
    k = CONST.k;
    c = CONST.c;
    m = CONST.m;
    
    A       = [ 0, 1;...
                -k/m, -c/m ];
    
    dydt    = A * reshape(y, [], 1);
    
return