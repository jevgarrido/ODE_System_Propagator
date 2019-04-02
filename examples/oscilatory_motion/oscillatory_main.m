function [] = oscillatory_main()
    
    global MAIN CONST PLOT
    
    % Constants associated with the dynamics
    CONST.y0    = [-2, 3];  % Initial state
    CONST.tspan = [0, 20];  % Start time, end time
    CONST.k     = 5;        % Spring constant
    CONST.c     = 0.5;      % Damping constant
    CONST.m     = 1;        % Mass of the system
    
    % Parameters associated with the computation
    MAIN.dynamics   = 'oscillatory_dynamics'; 	% Name of dynamics function
    MAIN.method     = 'RK_4';                % Choose the method
    MAIN.step       = 0.01;                     % Step size
    
    % Parameters associated with the plotting
    PLOT.types     = {'A'};
    PLOT.y_names   = {'Position', 'Velocity'};
    PLOT.y_units   = {'m', 'm/s'};
    PLOT.exact_sol = 1;             % Compare with 'ode45'? Yes: 1, No: 0
end