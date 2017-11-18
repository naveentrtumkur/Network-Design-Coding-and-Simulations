prompt = 'What are the total random numbers required? ';
val = input(prompt);
[U] = MatLab1(val);
totalCase = val;
favor = 0;
k=1;
%disp(length(U));
for i=1:length(U)
    if(U(i)>=0.5) && (U(i)<=1.0)
        favor = favor + 1;
        %disp(favor);
        prob(k) = U(i);
        k= k +1;
    %else
     %   prob(i) = 0;
    end
end
disp(U);
disp(favor);
disp(totalCase);
prob1 = favor/totalCase;

fprintf('Probability, P(U>x) = %f',prob1);

   %for i=1:val
    %    (i) = rand();
    %end
plot(prob,'--xr')
xlabel('Porbability of each value in U');
ylabel('Probability Value in range 0.5 and 1.0');
grid on;
