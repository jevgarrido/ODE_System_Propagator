function [dydt] = rossler_dynamics(~,y)
    % This function represents the problem we are tryng to solve.
    % It returns the right-hand side of the differential equation of the
    % system.
    
    % The first input is the the independent variable (usualy time), and
    % the second input is the current state of the system (which can be a matrix).
    
    global CONSTANTS
    
    y = reshape(y, [], 1);
    
    dydt = [- y(2) - y(3);...
            y(1) + CONSTANTS.a*y(2);...
            CONSTANTS.b + y(1)*y(3) - CONSTANTS.c*y(3)];
    
end