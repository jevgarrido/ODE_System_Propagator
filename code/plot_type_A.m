function [] = plot_type_A(which_fig)
    global MAIN PLOT
    
    figure(which_fig)
    
    if isfield(PLOT, 'toguether') && PLOT.toguether && ~( PLOT.ode45 || numel(MAIN.method) > 1 )
        plot(MAIN.t,MAIN.y)
        grid on
        legend(PLOT.y_names, 'location', 'best')
        xlabel('Time')
        ylabel('States')
        title('Type A Plot')
        return
    end
    
    if PLOT.ode45
        MAIN.method{end+1} = 'ode45';
    end
   
    [row, col] = subplot_idices(MAIN.y_dim);
    
    for kk = 1:min(MAIN.y_dim, 6)
        subplot(row, col, kk)
        y = permute(MAIN.y(kk, :, :), [3,2,1]);
        plot(MAIN.t,y)
        
        if PLOT.ode45
            hold on
            plot(MAIN.t_ode, MAIN.y_ode(:,kk))
            hold off
        end
        grid on
        xlabel('Time')
        ylabel(PLOT.y_names{kk})
        legend(MAIN.method, 'location', 'best')
    end
end

function [row, col] = subplot_idices(dim)
    switch dim
        case 1
            row = 1;    col = 1;
        case 2
            row = 2;    col = 1;
        case 3
            row = 3;    col = 1;
        case 4
            row = 2;    col = 2;
        case 5
            row = 2;    col = 3;
        case 6
            row = 2;    col = 3;
        otherwise
            row = 2;    col = 3;
            disp('This system contains too many states. Only plotting the first 6.')
    end
end