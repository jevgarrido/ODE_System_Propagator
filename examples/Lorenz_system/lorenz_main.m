function lorenz_main
    close all, clear global
    
    global MAIN CONST PLOT
    
    % Constants associated with the dynamics
    CONST.y0    = [-10, -3, 30];    % Initial state
    CONST.tspan = [0, 50];          % Start time, end time
    CONST.sigma = 10;
    CONST.rho   = 28;
    CONST.beta  = 8/3;
    
    % Parameters associated with the computation
    MAIN.dynamics   = 'lorenz_dynamics';    % Name of dynamics function
    MAIN.method     = {'RK_4'};             % Choose the method(s)
    MAIN.step       = 0.001;                 % Step size

    % Parameters associated with the plotting
    PLOT.types      = {'A', 'B'};
    PLOT.y_names    = {'X Coordinate', 'Y Coordinate', 'Z Coordinate'};
    PLOT.toguether  = 0;    % Possible if using only one method
    PLOT.ode45      = 1;    % Compare with 'ode45'?
    
    % Call the main function
    main;
end