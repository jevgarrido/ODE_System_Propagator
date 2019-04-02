function [] = predator_prey_main()
        
    global MAIN CONSTANTS
    
    MAIN.t_zero     = 0;                    % Starting time
    MAIN.y_zero     = [20, 20];     % Initial conditions
    MAIN.step       = 0.01;                % Step size
    MAIN.t_limit    = 10;                   % Limit of the computation
    MAIN.dynamics   = 'predator_prey_dynamics';  % Name of dynamics function
    MAIN.method     = 'RK_8-12';            % Choose the method
    
    % Define the constants associated with the dynamics
    CONSTANTS.alpha     = 3;
    CONSTANTS.beta      = 1;
    CONSTANTS.delta     = 0.5;
    CONSTANTS.gama      = 2;

end