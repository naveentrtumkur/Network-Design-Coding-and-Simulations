%Used the concept of inverse CDF to calculate Erlang random variable.

%Input the number of exponential random numbers to be generated.

prompt1 = '\nEnter the value of Mu:';
Mu = input(prompt1);
prompt2 = '\nEnter the value of k:';
k = input(prompt2);
prompt3 = '\nEnter the count of random numbers:';
n = input(prompt3);
[X] = MatLab1(n);

%create the random value and store it in array exprn
    ranerlang = sum((-1/(Mu*k))*log(1-X));
    %fprintf('Value number =%d Random value = %f ,exprnd value = %f',i,X(i),ranexp(i));
    
disp(ranerlang);