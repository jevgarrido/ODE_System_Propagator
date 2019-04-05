function [dydt] = various_dynamics(t,y)
 
    global CONST
    
    y = reshape(y, [], 1);
    
    switch CONST.choose
        case 'one'
            dydt    = t.*sin(y) + y.*cos(t);
            
        case 'two'    % MATLAB example for the ode45() function
            dydt    = [y(2);...
                        (1-y(1)^2)*y(2) - y(1)];
    end
return