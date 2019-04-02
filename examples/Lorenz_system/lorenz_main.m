function [] = lorenz_main()
        
    global MAIN CONSTANTS
    
    MAIN.t_zero     = 0;                    % Starting time
    MAIN.y_zero     = [1,1,1];     % Initial conditions
    MAIN.step       = 0.001;                % Step size
    MAIN.t_limit    = 50;                   % Limit of the computation
    MAIN.dynamics   = 'lorenz_dynamics';  % Name of dynamics function
    MAIN.method     = 'Euler';            % Choose the method
    
    % Define the constants associated with the dynamics
    CONSTANTS.sigma = 10;
    CONSTANTS.rho   = 28;
    CONSTANTS.beta  = 8/3;

end