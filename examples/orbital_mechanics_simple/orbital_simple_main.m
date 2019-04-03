function [] = orbital_simple_main()

    global MAIN CONST PLOT
    
    % Constants associated with the dynamics
    CONST.mu    = 3.987*10^5;   % km^3/s^2
    CONST.Re    = 6371;         % km
    CONST.ecc   = 0.3;          % 1
    CONST.axis  = 10000;         % km
    CONST.incl  = 45;           % degrees
    r0 = distance(CONST.axis, CONST.ecc, 0);
    v0 = visviva(r0, CONST.axis, CONST.mu);
    r0 = vectorize(r0, pi/2, 0);
    v0 = vectorize(v0, pi/2 - CONST.incl*pi/180, pi/2);
    CONST.y0    = [r0, v0];       % Initial state
    CONST.tspan = [0, 100*24*60];      % Start time, end time [min]
    %----------------------------------------------------------------------
    % Parameters associated with the computation
    MAIN.dynamics   = 'orbital_simple_dynamics';    % Name of dynamics function
    MAIN.method     = 'RK_8-12';                    % Choose the method
    MAIN.step       = 100;                           % Step size [min]
    
    % Parameters associated with the plotting
    PLOT.types      = {'A', 'B'};
    PLOT.y_names    = {'Pos x','Pos y','Pos z', 'Vel x','Vel y','Vel z'};
    PLOT.y_units    = {'m', 'm', 'm', 'm/s', 'm/s', 'm/s'};
    PLOT.ode45      = 0;             % Compare with 'ode45'? Yes: 1, No: 0
    PLOT.sphere     = CONST.Re;
end

%% Auxiliary Functions

function r = distance(axis, ecc, theta)
    r = axis*(1 - ecc^2)./(1 + ecc*cos(theta));
end

function v = visviva(r, axis, mu)
    v = sqrt(mu*(2/r - 1/axis));
end

function vec = vectorize(modulus, theta, phi)
    x = modulus.*sin(theta).*cos(phi);
    y = modulus.*sin(theta).*sin(phi);
    z = modulus.*cos(theta);
    vec = [x, y, z];
end
