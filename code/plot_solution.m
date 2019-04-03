function [] = plot_solution()

    global PLOT
    
    n_plots = size(PLOT.types,2); % Tells us how many plots
    
    for ii = 1 : n_plots
        figure(ii)
        plot_this(PLOT.types{ii})
    end
    
end

function [] = plot_this(type)
    global MAIN PLOT CONST
    
    switch type
        case 'A'
            plot(MAIN.t,MAIN.y), hold off
            grid on
            xlabel('Time')
            ylabel('States')
            
            if PLOT.ode45
                fun_name = MAIN.dynamics;
                tspan    = CONST.tspan;
                y0       = reshape(CONST.y0,[],1);
                
                [t_ode, y_ode] = ode45(fun_name, tspan, y0);
                hold on
                plot(t_ode, y_ode, '--', 'color', 'black')
                hold off
            end
            
            legend(PLOT.y_names, 'location', 'best')
        %------------------------------------------------------------------
        case 'B'
            return
        %------------------------------------------------------------------
        case 'C'
            return
        %------------------------------------------------------------------
        case 'D'
            return
    end
end