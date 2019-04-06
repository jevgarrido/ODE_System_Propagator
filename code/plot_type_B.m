function [] = plot_type_B(which_fig)
    global MAIN PLOT
    
    figure(which_fig)
    
    switch mod(size(MAIN.y,1), 3)
        case 0
            x   = [MAIN.y(1,:);MAIN.y(1,:)];
            y   = [MAIN.y(2,:);MAIN.y(2,:)];
            z   = [MAIN.y(3,:);MAIN.y(3,:)];
            xlabel(PLOT.y_names{1})
            ylabel(PLOT.y_names{2})
            zlabel(PLOT.y_names{3})
            if isfield(PLOT, 'sphere') && logical(PLOT.sphere)
                [Xsph,Ysph,Zsph] = sphere(30);
                Xsph = PLOT.sphere*Xsph;
                Ysph = PLOT.sphere*Ysph;
                Zsph = PLOT.sphere*Zsph;
                surf(Xsph, Ysph, Zsph, 'facecolor', [80, 80, 220]./255)
            end
        case 2
            x   = [MAIN.y(1,:);MAIN.y(1,:)];
            y   = [MAIN.y(2,:);MAIN.y(2,:)];
            z   = zeros(size(x));
            xlabel(PLOT.y_names{1})
            ylabel(PLOT.y_names{2})
        otherwise
            disp('In order to use a plot of Type B please make sure your state space is of size 2 or 3')
            close(which_fig)
            return
    end
    color   = [MAIN.t;MAIN.t];
    surface(x, y, z, color, 'edgecol', 'interp', 'linew', 2);
    grid on, axis equal
    title('Type B Plot')
    ylabel(colorbar, 'Time')
    if size(MAIN.y,1) > 2
        view(3)
    end
end