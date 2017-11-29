function X = Poisson(lambda) 

k=0.0; lambda = 2;
    produ = rand();
    while produ >= exp(-lambda)
        produ = produ*rand();
        k = k+1;
    end
    X = k-1;
    
    
    disp(X);
end
