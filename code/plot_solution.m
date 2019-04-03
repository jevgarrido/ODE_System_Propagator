function [] = plot_solution()

    global PLOT
    
    n_plots = size(PLOT.types,2); % Tells us how many plots
    
    for ii = 1 : n_plots
        figure(ii)
        plot_this(PLOT.types{ii}, ii)
    end
    
end

function [] = plot_this(type, which_fig)
    global MAIN PLOT CONST
    
    switch type
        case 'A'
            plot(MAIN.t,MAIN.y), hold off
            grid on
            xlabel('Time')
            ylabel('States')
            title('Type A Plot')
            if PLOT.ode45
                fun_name = MAIN.dynamics;
                tspan    = CONST.tspan;
                y0       = reshape(CONST.y0,[],1);
                
                [t_ode, y_ode] = ode45(fun_name, tspan, y0);
                hold on
                plot(t_ode, y_ode, '--', 'color', 'black')
                hold off
                for k = 1:length(y0)
                end
            end
            legend(PLOT.y_names, 'location', 'best')
        %------------------------------------------------------------------
        case 'B'
            switch size(MAIN.y,1)
                case 6
                    x   = [MAIN.y(1,:);MAIN.y(1,:)];
                    y   = [MAIN.y(2,:);MAIN.y(2,:)];
                    z   = [MAIN.y(3,:);MAIN.y(3,:)];
                    xlabel(PLOT.y_names{1})
                    ylabel(PLOT.y_names{2})
                    zlabel(PLOT.y_names{3})
                    if isfield(PLOT, 'sphere') && logical(PLOT.sphere)
                        [Xsph,Ysph,Zsph] = sphere(30);
                        Xsph = CONST.Re*Xsph;
                        Ysph = CONST.Re*Ysph;
                        Zsph = CONST.Re*Zsph;
                        surf(Xsph, Ysph, Zsph, 'facecolor', [80, 80, 220]./255)
                    end
                case 3
                    x   = [MAIN.y(1,:);MAIN.y(1,:)];
                    y   = [MAIN.y(2,:);MAIN.y(2,:)];
                    z   = [MAIN.y(3,:);MAIN.y(3,:)];
                    xlabel(PLOT.y_names{1})
                    ylabel(PLOT.y_names{2})
                    zlabel(PLOT.y_names{3})
                case 2
                    x   = [MAIN.y(1,:);MAIN.y(1,:)];
                    y   = [MAIN.y(2,:);MAIN.y(2,:)];
                    z   = zeros(size(x));
                    xlabel(PLOT.y_names{1})
                    ylabel(PLOT.y_names{2})
                otherwise
                    disp('In order to use a plot of Type B please make sure your state space is of size 2 or 3')
                    close (which_fig)
                    return
            end
            color   = [MAIN.t;MAIN.t];
            surface(x, y, z, color, 'edgecol', 'interp', 'linew', 2);
            grid on, axis equal
            title('Type B Plot')
            ylabel(colorbar, 'Time')
            return
        %------------------------------------------------------------------
        case 'C'
            switch size(MAIN.y,1) 
                case 2
                    x   = MAIN.y(1,:);
                    y   = MAIN.y(2,:);
                    z   = MAIN.t;
                    plot3(x, y, z, 'linew', 2), grid on, axis square
                    title('Type C Plot')
                    xlabel(PLOT.y_names{1})
                    ylabel(PLOT.y_names{2})
                    zlabel('Time')
                otherwise
                    disp('In order to use a plot of Type C please make sure your state space is of size 2')
                    close(which_fig)
                    return
            end
            return
    end
end