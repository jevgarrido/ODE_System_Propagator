function [] = pendulum_main
    close all, clear global

    global MAIN CONST PLOT

    % Constants associated with the dynamics
    CONST.y0    = [175, 0.5]*pi/180;    % Initial state
    CONST.tspan = [0, 15];              % Start time, end time
    CONST.g     = 9.81;                 % Acceleration due to gravity
    CONST.L     = 1;                    % Length of the pendulum
    CONST.mu    = 0.1;                  % Damping coefficient

    % Parameters associated with the computation
    MAIN.dynamics   = 'pendulum_dynamics';  % Name of dynamics function
    MAIN.method     = {'RK_8-12'};          % Choose the method
    MAIN.step       = 0.01;                 % Step size

    % Parameters associated with the plotting
    PLOT.types      = {'A', 'B', 'C'};
    PLOT.y_names    = {'Angle [rad]', 'Angular Velocity [rad/s]'};
	PLOT.toguether  = 0;    % Possible if using only one method
    PLOT.ode45      = 1;    % Compare with 'ode45'?

    % Call the main function
    main;
end