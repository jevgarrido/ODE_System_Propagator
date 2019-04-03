function [dydt] = predator_prey_dynamics(~,y)
    
    global CONST
    
    alpha   = CONST.alpha;
    beta    = CONST.beta;
    delta   = CONST.delta;
    gama    = CONST.gama;
    
    dydt = [y(1)*(alpha - beta*y(2));...
            y(2)*(delta*y(1) - gama)];
end