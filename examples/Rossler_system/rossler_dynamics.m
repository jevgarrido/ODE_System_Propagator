function [dydt] = rossler_dynamics(~,y)
    
    global CONST
    
    a = CONST.a;
    b = CONST.b;
    c = CONST.c;
    
    dydt = [- y(2) - y(3);...
            y(1) + a*y(2);...
            b + y(1)*y(3) - c*y(3)];
end