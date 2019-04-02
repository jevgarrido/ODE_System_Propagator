function [] = main(project)
    
    global MAIN
    MAIN = [];
    
    run(project)

    select_method;
    
    run_method;
    
    plot_solution;
    
end
