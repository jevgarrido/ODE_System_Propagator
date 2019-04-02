function [] = pendulum_main()
    
    global MAIN CONSTANTS
    
    MAIN.t_zero     = 0;                    % Starting time
    MAIN.y_zero     = [175,0.5]*pi/180;     % Initial conditions
    MAIN.step       = 0.001;                % Step size
    MAIN.t_limit    = 10;                   % Limit of the computation
    MAIN.dynamics   = 'pendulum_dynamics';  % Name of dynamics function
    MAIN.method     = 'RK_8-12';            % Choose the method
    
    % Define the constants associated with the dynamics
    CONSTANTS.g     = 9.81;     % Acceleration due to gravity
    CONSTANTS.L     = 1;        % Length of the pendulum
    CONSTANTS.mu    = 0.1;      % Damping coefficient

end