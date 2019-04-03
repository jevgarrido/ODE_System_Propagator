function [] = main(project)
    
    load_this(project);

    select_method;
    
    run_method;
    
    plot_solution;
    
end
