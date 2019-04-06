function [] = orbital_simple_main
    close all, clear global

    global MAIN CONST PLOT

    % Constants associated with the dynamics
    CONST.mu    = 3.987*10^5;   % km^3/s^2
    CONST.Re    = 6371;         % km
    CONST.ecc   = 0.3;          % 1
    CONST.axis  = 10000;        % km
    CONST.incl  = 45;           % degrees

    CONST.r0 = distance(CONST.axis, CONST.ecc, 0);
    CONST.v0 = visviva(CONST.r0, CONST.axis, CONST.mu);
    CONST.r0 = vectorize(CONST.r0, pi/2, 0);
    CONST.v0 = vectorize(CONST.v0, pi/2 - CONST.incl*pi/180, pi/2);

    CONST.y0    = [CONST.r0, CONST.v0]; % Initial state
    CONST.tspan = [0, 100*24*60];       % Start time, end time [min]
    %----------------------------------------------------------------------

    % Parameters associated with the computation
    MAIN.dynamics   = 'orbital_mec_dynamics';    % Name of dynamics function
    MAIN.method     = {'RK_8-12'};                  % Choose the method
    MAIN.step       = 100;                        	% Step size [min]

    % Parameters associated with the plotting
    PLOT.types      = {'A', 'B'};
    PLOT.y_names    = {'Pos x [m]','Pos y [m]','Pos z [m]', 'Vel x [m/s]','Vel y [m/s]','Vel z [m/s]'};
    PLOT.toguether  = 0;    % Possible if using only one method
    PLOT.ode45      = 1;    % Compare with 'ode45'?
    PLOT.sphere     = CONST.Re;

    % Call the main function
    main;
end

%% Auxiliary Functions

% Get distance from true anomaly and orbit parameters
function r = distance(axis, ecc, theta)
    r = axis*(1 - ecc^2)./(1 + ecc*cos(theta));
end

% Get velocity from distance, mu and orbit parameters
function v = visviva(r, axis, mu)
    v = sqrt(mu*(2/r - 1/axis));
end

% Get [x, y, z] vector given spherical coordinates
function vec = vectorize(modulus, theta, phi)
    x = modulus.*sin(theta).*cos(phi);
    y = modulus.*sin(theta).*sin(phi);
    z = modulus.*cos(theta);
    vec = [x, y, z];
end
