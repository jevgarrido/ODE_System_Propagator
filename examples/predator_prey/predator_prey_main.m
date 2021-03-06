function [] = predator_prey_main
    close all, clear global

    global MAIN CONST PLOT

    % Constants associated with the dynamics
    CONST.y0    = [500, 50];    % Initial conditions
    CONST.tspan = [0, 10];      % Start time, end time
    CONST.alpha = 5;
    CONST.beta  = 0.1;
    CONST.delta = 0.01;
    CONST.gama  = 2;

    % Parameters associated with the computation
    MAIN.dynamics   = 'predator_prey_dynamics'; % Name of dynamics function
    MAIN.method     = {'RK_8-12'};             	% Choose the method
    MAIN.step       = 0.01;                     % Step size

    % Parameters associated with the plotting
    PLOT.types      = {'A', 'C'};
    PLOT.y_names    = {'Number of Rabbits', 'Number of Foxes'};
    PLOT.toguether  = 1;    % Possible if using only one method
    PLOT.ode45      = 0;    % Compare with 'ode45'?

    % Call the main function
    main;
end