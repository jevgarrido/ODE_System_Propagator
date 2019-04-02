function [y] = oscillatory_exact(t)
    global MAIN CONSTANTS
    
    y_0 = MAIN.y_zero(1);
    v_0 = MAIN.y_zero(2);
    
    k = CONSTANTS.k;
    c = CONSTANTS.c;
    m = CONSTANTS.m;
    
    omega_0 = sqrt(k/m);
    gama = c/(2*m);
    
    omega_pr = sqrt( omega_0^2 - gama^2 );
    phi_h = atan2( omega_pr*y_0, v_0 + gama*y_0);
    A_h = y_0/sin(phi_h);
    
    y = [ A_h*exp(-gama.*t).*sin(omega_pr.*t + phi_h);...
           A_h*exp(-gama*t).*(omega_pr*cos(phi_h + t*omega_pr)-gama*sin(phi_h + t*omega_pr))];
return