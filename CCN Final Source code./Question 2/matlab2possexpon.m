clear All;
prompt1 = 'What are the total random numbers required? ';
val = input(prompt1);
prompt2 = 'Enter the value of lambda? ';
lambda = input(prompt2);
for i=1:val
U(i) = matlab2b(lambda);
end;
totalCase = val;
favor = 0;
k=1;
%disp(length(U));

    for j=0:1:20
        favor=0;
        for i=1:length(U)
    if (U(i)>=j) && (U(i)<=20)
        favor = favor + 1;
        %disp(favor);
        %prob(favor) = U(i);
        %k = k + 1
    %else
     %   prob(i) = 0;
    end
    
        end
    X(k) = favor;
    y(k) = j;
    k = k+1;
end
disp(U);
disp(favor);
disp(totalCase);
%for i =1:length(U)
%X = X(i)/totalCase;
%end;
X = X/totalCase;
%fprintf('Probability, P(U>x) = %f',prob1);

disp(length(y));
disp(length(X));
%X = log(X);

plot(y,X)
ylim([0 1.0]);
xlabel('Porbability of each value in U');
ylabel('Probability Value in range 0.5 and 1.0');
grid on;