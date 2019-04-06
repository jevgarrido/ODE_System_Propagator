function [] = select_and_run
    global MAIN PLOT CONST
    
    % Loop for the amount of methods selected
    for jj = 1:numel(MAIN.method)
        
        select_method( MAIN.method{jj} );
        
        run_method(jj);
    end

    % Run ode45() if selected
    if PLOT.ode45
        fun_name = MAIN.dynamics;
        tspan    = CONST.tspan;
        y0       = reshape(CONST.y0,[],1);
        [MAIN.t_ode, MAIN.y_ode] = ode45(fun_name, tspan, y0);
    end
    
end