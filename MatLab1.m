function [r1]= MatLab1(num)
    for i=1:num
        r1(i) = rand();
    end
plot(r1,'--xr')
xlabel('Each number in Input');
ylabel('Random number generated(between 0 and 1)');
grid on;
%disp(r1);

end