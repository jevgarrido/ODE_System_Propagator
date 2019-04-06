function [] = plot_type_A(which_fig)
    global MAIN PLOT
    
    figure(which_fig)
    
    for jj = 1:size(MAIN.y, 3)
        hold on
        plot(MAIN.t,MAIN.y(:,:,jj))
    end
    
    grid on
    hold off
    
    if PLOT.ode45
        hold on
        plot(MAIN.t_ode, MAIN.y_ode)
        hold off
        PLOT.y_names{end+1} = 'ode45';
    end
    
    legend(PLOT.y_names, 'location', 'best')
    xlabel('Time')
    ylabel('States')
    title('Type A Plot')
end