function [dydt] = pendulum_dynamics(~,y)
    % This function represents the problem we are tryng to solve.
    % It returns the right-hand side of the differential equation of the
    % system.
    
    % The first input is the the independent variable (usualy time), and
    % the second input is the current state of the system (which can be a matrix).
    
    global CONST
    
    mu  = CONST.mu;
    g   = CONST.g;
    L   = CONST.L;
    
    dydt    = [ y(2);...
                -mu*y(2) - (g/L)*sin(y(1)) ];
    
return