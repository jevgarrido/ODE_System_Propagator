function [dydt] = lorenz_dynamics(~,y)

    global CONST
    
    sigma   = CONST.sigma;
    rho     = CONST.rho;
    beta    = CONST.beta;
    
    dydt = [sigma*y(2) - sigma*y(1);...
            rho*y(1) - y(1)*y(3) - y(2);...
            y(1)*y(2) - beta*y(3)];
end