%Used the concept of inverse CDF to calculate Erlang random variable.

%Input the number of exponential random numbers to be generated.
function erl = erlang_ditribution(Mu,k)
%prompt1 = '\nEnter the value of Mu:';
%Mu = input(prompt1);
%prompt2 = '\nEnter the value of k:';
%k = input(prompt2);
[X] = MatLab1(k);

%create the random value and store it in array exprn
    ranerlang = sum((-1/(Mu*k))*log(1-X));
    %fprintf('Value number =%d Random value = %f ,exprnd value = %f',i,X(i),ranexp(i));
    
%disp(ranerlang);
end