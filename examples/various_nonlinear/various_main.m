function [] = various_main()
    
    global MAIN CONST PLOT
    
    % Constants associated with the dynamics
    CONST.y0        = [2, 0.5];   % Initial state
    CONST.tspan     = [0, 20];  % Start time, end time
    CONST.choose    = 'one';    % Choose the dynamics function to use
    
    % Parameters associated with the computation
    MAIN.dynamics   = 'various_dynamics'; 	% Name of dynamics function
    MAIN.method     = 'RK_4';                   % Choose the method
    MAIN.step       = 0.01;                     % Step size
    
    % Parameters associated with the plotting
    PLOT.types      = {'A'};
    PLOT.y_names    = {'State 1', 'State 2'};
    PLOT.ode45      = 1;             % Compare with 'ode45'? Yes: 1, No: 0
end