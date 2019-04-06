function [] = various_main
    close all, clear global

    global MAIN CONST PLOT

    % Constants associated with the dynamics
    CONST.y0        = [2, 0.5];     % Initial state
    CONST.tspan     = [0, 20];      % Start time, end time
    CONST.choose    = 'two';        % Choose the dynamics function to use

    % Parameters associated with the computation
    MAIN.dynamics   = 'various_dynamics'; 	% Name of dynamics function
    MAIN.method     = {'RK_4'};             % Choose the method
    MAIN.step       = 0.1;                  % Step size

    % Parameters associated with the plotting
    PLOT.types      = {'A'};
    PLOT.y_names    = {'State 1', 'State 2'};
    PLOT.toguether  = 0;    % Possible if using only one method
    PLOT.ode45      = 1;    % Compare with 'ode45'?

    % Call the main function
    main;
end
