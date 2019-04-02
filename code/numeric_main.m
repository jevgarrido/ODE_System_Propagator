function [] = numeric_main(project)
    
    global MAIN
    MAIN = [];
    
    run(project)
    
    % Select the set of coefficients with respect to the chosen method
    select_method;
    
    run_method;
    
    plot_solution;
    
end