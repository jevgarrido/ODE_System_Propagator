function select_and_run
    global MAIN PLOT CONST
    
    method      = MAIN.method;
    fun_name    = MAIN.dynamics;
    
    plot_ode45  = PLOT.ode45;
    
    tspan       = CONST.tspan;
    y0          = CONST.y0;
    
    
    
    % Loop for the amount of methods selected
    for jj = 1:numel(method)
        
        select_method( method{jj} );
        
        run_method(jj);
    end
    
    [t_ode, y_ode] = declare;
    
    % Run ode45 if selected
    if plot_ode45
        y0       = reshape(y0,[],1);
        [t_ode, y_ode] = ode45(fun_name, tspan, y0);
    end
    
    
    
    
    MAIN.t_ode = t_ode;
    MAIN.y_ode = y_ode;
end