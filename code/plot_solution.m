function [] = plot_solution()

    global MAIN PLOT

    if numel(MAIN.method) > 1
        PLOT.types = {'A'};
    end
    
    % Tells us how many plot types were selected
    PLOT.n_plots = numel(PLOT.types); 
    
    % Loop for the ammount of different plot types selected
    for ii = 1 : PLOT.n_plots
        
        switch PLOT.types{ii}
            case 'A'
                plot_type_A(ii);
            case 'B'
                plot_type_B(ii);
            case 'C'
                plot_type_C(ii);
            otherwise
                disp(['No plot type found for ' PLOT.types{ii}]);
        end
        
    end
end