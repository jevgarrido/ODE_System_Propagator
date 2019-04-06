function [] = plot_type_C(which_fig)
    global MAIN PLOT

    figure(which_fig)
    
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
    end
end