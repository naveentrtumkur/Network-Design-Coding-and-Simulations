%Ask the user to specify the number of random numbers to be generated.
prompt = 'What are the total random numbers required? ';
val = input(prompt);
%Create the random numbers and store them in array 'X'.
[X] = MatLab1(val);

%Plot the graph with random numbers generated.
plot(X,'--*b')

%Set the xlabel and ylabel values.
xlabel('Each number in Input');
ylabel('Random number generated(between 0 and 1)');
grid on;
%disp(r1);