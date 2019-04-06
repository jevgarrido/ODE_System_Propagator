function [dydt] = orbital_simple_dynamics(~,y)

    global CONST
    
    r = y(1:3);         % position
    v = y(4:6);         % velocity
    
    rn = norm(r);
    a = -CONST.mu*r/rn^3;
    
    dydt = [v; a];
end
