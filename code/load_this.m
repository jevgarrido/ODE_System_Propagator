function [] = load_this(project)
    
    close all
    
    global MAIN CONST PLOT
    
    MAIN    = [];
    CONST   = [];
    PLOT    = [];
    
    run(project);
end