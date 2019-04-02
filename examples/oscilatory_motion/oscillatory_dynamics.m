function [dydt] = oscillatory_dynamics(~,y)
    % This function represents the problem we are tryng to solve.
    % It returns the right-hand side of the differential equation of the
    % system.
    
    % The first input is the the independent variable (usualy time), and
    % the second input is the current state of the system (which can be a matrix).
    
    global CONSTANTS
    
    A       = [ 0, 1;...
                -CONSTANTS.k/CONSTANTS.m, -CONSTANTS.c/CONSTANTS.m ];
    
    dydt    = A * reshape(y, [], 1);
    
return