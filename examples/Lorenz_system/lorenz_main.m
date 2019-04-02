function [] = lorenz_main()
        
    global MAIN CONST PLOT
    
    % Constants associated with the dynamics
    CONST.y0    = [1, 1, 1];    % Initial state
    CONST.tspan = [0, 50];      % Start time, end time
    CONST.sigma = 10;
    CONST.rho   = 28;
    CONST.beta  = 8/3;
    
    % Parameters associated with the computation
    MAIN.dynamics   = 'lorenz_dynamics';  % Name of dynamics function
    MAIN.method     = 'RK_8-12';            % Choose the method
    MAIN.step       = 0.01;                % Step size

    % Parameters associated with the plotting
    PLOT.types     = {'A'};
    PLOT.y_names   = {'x', 'y', 'z'};
    PLOT.y_units   = {'-', '-', '-'};
    PLOT.exact_sol = 0;             % Compare with 'ode45'? Yes: 1, No: 0
end