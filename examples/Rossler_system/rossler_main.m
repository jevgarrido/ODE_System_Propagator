function [] = rossler_main
    close all, clear global

    global MAIN CONST PLOT

    % Constants associated with the dynamics
    CONST.y0    = [1, 1, 1];    % Initial state
    CONST.tspan = [0, 100];     	% Start time, end time
    CONST.a     = 0.3;
    CONST.b     = 0.2;
    CONST.c     = 5.7;

    % Parameters associated with the computation
    MAIN.dynamics   = 'rossler_dynamics';   % Name of dynamics function
    MAIN.method     = {'RK_4', 'RK_8-12'};            % Choose the method
    MAIN.step       = 0.1;                % Step size

    % Parameters associated with the plotting
    PLOT.types      = {'A', 'B'};
    PLOT.y_names    = {'X Coordinate', 'Y Coordinate', 'Z Coordinate'};
    PLOT.toguether  = 0;    % Plot the states in the same graph?
    PLOT.ode45      = 1;    % Compare with 'ode45'?

    % Call the main function
    main;
end