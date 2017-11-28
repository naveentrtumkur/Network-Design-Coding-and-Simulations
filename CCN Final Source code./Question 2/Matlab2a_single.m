%Used the concept of inverse CDF to calculate exponential random variable.

%Input the number of exponential random numbers to be generated.

prompt1 = '\nEnter the value of lambda:';
lambda = input(prompt1);
[X] = MatLab1(1);

%create the random value and store it in array exprn
    ranexp = (-1/lambda)*log(1-X);
    %fprintf('Value number =%d Random value = %f ,exprnd value = %f',i,X(i),ranexp(i));
    
disp(ranexp);

    