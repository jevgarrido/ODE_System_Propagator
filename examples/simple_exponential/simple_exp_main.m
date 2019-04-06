function [] = simple_exp_main
    close all, clear global

    global MAIN CONST PLOT

    % Constants associated with the dynamics
    CONST.y0   	= [1, 2, 3];    % Initial state
    CONST.tspan = [0, 5];       % Start time, end time
    CONST.a     = -1;

    % Parameters associated with the computation
    MAIN.dynamics   = 'simple_exp_dynamics';    % Name of dynamics function
    MAIN.method     = {'RK_8-12'};              % Choose the method
    MAIN.step       = 0.001;                    % Step size

    % Parameters associated with the plotting
    PLOT.types      = {'A'};
    PLOT.y_names    = {'Exponential Approx'};
    PLOT.toguether  = 0;    % Possible if using only one method
    PLOT.ode45      = 1;    % Compare with 'ode45'?

    % Call the main function
    main;
end