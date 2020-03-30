function [] = run_method(jj)
    global MAIN CONST
    
    y0      = reshape(CONST.y0, [], 1);
    tspan   = CONST.tspan;
    h       = MAIN.step;
    a       = sparse(MAIN.a);
    b       = sparse(MAIN.b);
    c       = sparse(MAIN.c);
    ii_max  = length(c);
    
    % Get dimension of the problem
    y_dim   = length(y0);       
    n_iter  = round(tspan(2)/h);
    
    % Declare solution array
    MAIN.y(:,:,jj)  = [y0, zeros( y_dim, n_iter )];
    MAIN.t  = linspace(tspan(1), tspan(2), 1 + n_iter);
    MAIN.y_dim = y_dim;

    % Solve the problem
    for nn = 1:n_iter
        K = zeros(y_dim, ii_max);
        for ii = 1:ii_max
            time    = MAIN.t(:,nn) + h*c(ii);
            state   = MAIN.y(:,nn) + h*K*a(ii,:)';
            K(:,ii) = feval( MAIN.dynamics, time, state );
        end
        MAIN.y(:,nn+1, jj) = MAIN.y(:,nn, jj) + h.*K*b ;
    end
end