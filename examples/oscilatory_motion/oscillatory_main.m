function [] = oscillatory_main()
    
    global MAIN CONSTANTS
    
    MAIN.t_zero     = 0;                        % Starting time
    MAIN.y_zero     = [-2,3];                   % Initial conditions
    MAIN.step       = 0.01;                    % Step size
    MAIN.t_limit    = 20;                       % Limit of the computation
    MAIN.dynamics   = 'oscillatory_dynamics';    % Name of dynamics function
    MAIN.exact_sol  = 'oscillatory_exact';       % Name of exact solution function
    MAIN.method     = 'RK_8-12';                % Choose the method
    
    % Define the constants associated with the dynamics
    CONSTANTS.k = 5;    % Spring constant
    CONSTANTS.c = 0.5;  % Damping constant
    CONSTANTS.m = 1;    % Mass of the system

end