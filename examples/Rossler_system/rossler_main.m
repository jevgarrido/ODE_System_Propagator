function [] = rossler_main()
        
    global MAIN CONSTANTS
    
    MAIN.t_zero     = 0;                    % Starting time
    MAIN.y_zero     = [1, 1, 1];     % Initial conditions
    MAIN.step       = 0.001;                % Step size
    MAIN.t_limit    = 50;                   % Limit of the computation
    MAIN.dynamics   = 'rossler_dynamics';  % Name of dynamics function
    MAIN.method     = 'RK_8-12';            % Choose the method
    
    % Define the constants associated with the dynamics
    CONSTANTS.a     = 0.3;
    CONSTANTS.b     = 0.2;
    CONSTANTS.c     = 5.7;

end