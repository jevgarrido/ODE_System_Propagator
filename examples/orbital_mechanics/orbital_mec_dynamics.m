function [dydt] = orbital_mec_dynamics(~,y)

    global CONST
    
    r = y(1:3);         % position
    v = y(4:6);         % velocity
    rn = norm(r);
    a = -CONST.mu/rn^2;
    
    if CONST.include_J2
        rn_aux = norm(r(1:2));
        theta = acos(r(3)/rn);

        % acceleration due to J2
        ar2 = CONST.mu*CONST.J2*CONST.r_eq^2*(3*cos(theta)^2 - 1)*3/(2*rn^4);
        at2 = CONST.mu*CONST.J2*CONST.r_eq^2*(3*sin(theta)*cos(theta))/(rn^4);

        r_perp = ([0, 1; -1, 0]*[rn_aux; r(3)]./rn)';

        cos_theta_aux = r_perp(2);
        sin_theta_aux = r_perp(1);
        theta_aux = get_angle(cos_theta_aux, sin_theta_aux);

        cos_phi = r(1)/rn_aux;
        sin_phi = r(2)/rn_aux;
        phi = get_angle(cos_phi, sin_phi);

        r_perp = vectorize(theta_aux, phi);

        a = (a + ar2).*r/rn + at2.*r_perp;
    end
    dydt = [v; a];
end

%% Auxiliary functions

function vec = vectorize(theta, phi)
    x = sin(theta).*cos(phi);
    y = sin(theta).*sin(phi);
    z = cos(theta);
    vec = [x; y; z];
end

function an = get_angle(cos, sin)
    c = acos(cos);
    s = asin(sin);
    if cos >= 0 && sin >= 0
        an = c;
    elseif cos < 0 && sin >= 0
        an = c;
    elseif cos >= 0 && sin < 0
        an = 2*pi+s;
    elseif cos < 0 && sin < 0
        an = 2*pi-c;
    end
    an = mod(an, 2*pi);
end
