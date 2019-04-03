function [] = simple_exp_main()
    
    global MAIN CONST PLOT
    
    % Constants associated with the dynamics
    CONST.y0   	= [2, -2];  % Initial state
    CONST.tspan = [0, 5];   % Start time, end time
    CONST.a     = [1, 0; 0, -1];
    
    % Parameters associated with the computation
    MAIN.dynamics   = 'simple_exp_dynamics';    % Name of dynamics function
    MAIN.method     = 'RK_8-12';                % Choose the method
    MAIN.step       = 0.001;                    % Step size
          
    % Parameters associated with the plotting
    PLOT.types      = {'A'};
    PLOT.y_names    = {'Exp 1', 'Exp 2'};
    PLOT.y_units    = {'unit', 'unit'};
    PLOT.ode45      = 1;             % Compare with 'ode45'? Yes: 1, No: 0
end