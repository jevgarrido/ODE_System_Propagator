function [] = plot_solution()

    global MAIN
    
    figure(1)
    if isfield(MAIN, 'exact_sol') && ~isempty(MAIN.exact_sol)
        t_exact = linspace(MAIN.t_zero, MAIN.t_limit, 1000);
        y_exact = feval(MAIN.exact_sol, t_exact);
        plot(t_exact, y_exact, 'color', 'blue'), hold on
    end
    plot(MAIN.t,MAIN.y), hold off
    grid on
    
    xlabel('Time')
    ylabel('States')
    
end