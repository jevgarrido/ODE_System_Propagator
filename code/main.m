function [] = main(project)
    
    close all
    global MAIN CONST PLOT
    MAIN    = [];
    CONST   = [];
    PLOT    = [];
    
    run(project);

    select_method;
    
    run_method;
    
    plot_solution;
    
end
