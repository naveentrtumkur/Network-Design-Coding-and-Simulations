%Input the number of exponential random numbers to be generated.
function ranexp = matlab2a(n,lambda)
%prompt = 'Enter the total number of random numbers reqd?';
%val = input(prompt);
val = n;
%prompt1 = '\nEnter the value of lambda:';
%lambda = input(prompt1);
[X] = MatLab1(val);

%create the random value and store it in array exprn
for i=1:length(X)
    ranexp(i) = (-1/lambda)*log(1-X(i));
    %fprintf('Value number =%d Random value = %f ,exprnd value = %f',i,X(i),ranexp(i));
end

%disp(ranexp);

    