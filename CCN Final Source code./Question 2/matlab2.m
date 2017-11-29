% calculation of e^x in taylor series
x= rand();   % took an exampke vale of x=3
n=10;  % took an example value of n=10
i=1;
f=1;
while i<n || i==n
    f= f+(x.^i)/factorial(i);
    i=1+i;
end

disp(f)