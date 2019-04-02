function [] = simple_exp_main()
    
    global MAIN CONSTANTS
    
    MAIN.t_zero     = 0;                        % Starting time
    MAIN.y_zero     = [-2, 4];                  % Initial conditions
    MAIN.step       = 0.001;                        % Step size
    MAIN.t_limit    = 3;                        % Limit of the computation
    MAIN.dynamics   = 'simple_exp_dynamics';	% Name of dynamics function
    MAIN.exact_sol  = 'simple_exp_exact';       % Name of exact solution function
    MAIN.method     = 'RK_8-12';               % Method to be used
          
    % Define the constants associated with the dynamics
    CONSTANTS.a = 1;

end