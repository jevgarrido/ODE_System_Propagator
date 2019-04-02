function [] = run_method()
    global MAIN
    
    % Dimension of the problem
    MAIN.y_dim  = length(MAIN.y_zero);           
    MAIN.t_dim  = length(MAIN.t_zero);
    MAIN.n_iter = round(MAIN.t_limit/MAIN.step); % Number of iterations
    
    MAIN.y  = [reshape(MAIN.y_zero, [], 1), zeros( MAIN.y_dim, MAIN.n_iter )];
    MAIN.t  = linspace(MAIN.t_zero, MAIN.t_limit, MAIN.n_iter+1);
    MAIN.t  = repmat(MAIN.t, MAIN.t_dim, 1);
    
    ii_max  = length(MAIN.c);
    h       = MAIN.step;
    a       = sparse(MAIN.a);
    b       = MAIN.b; %sparse(MAIN.b);
    c       = sparse(MAIN.c);
    
    for nn = 1:MAIN.n_iter
        K = zeros(MAIN.y_dim, ii_max);
        for ii = 1:ii_max
            time    = MAIN.t(:,nn) + h*c(ii);
            state   = MAIN.y(:,nn) + h*K*a(ii,:)';
            K(:,ii) = feval( MAIN.dynamics, time, state );
        end
        MAIN.y(:,nn+1) = MAIN.y(:,nn) + h.*K*b ;
    end
end