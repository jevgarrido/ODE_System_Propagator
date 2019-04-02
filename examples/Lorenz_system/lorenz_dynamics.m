function [dydt] = lorenz_dynamics(~,y)
    % This function represents the problem we are tryng to solve.
    % It returns the right-hand side of the differential equation of the
    % system.
    
    % The first input is the the independent variable (usualy time), and
    % the second input is the current state of the system (which can be a matrix).
    
    global CONST
    
    sigma   = CONST.sigma;
    rho     = CONST.rho;
    beta    = CONST.beta;
    
    dydt = [sigma*y(2) - sigma*y(1);...
            rho*y(1) - y(1)*y(3) - y(2);...
            y(1)*y(2) - beta*y(3)];
end