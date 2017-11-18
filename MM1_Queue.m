N = input('Enter the Value of N: ');

% Variable Declaration
AT = [];
ST = [];
WT = [];
QL = [];
IDT = [];
CAT = [];
CDT = [];
CLK = 0;

% Initialization
AT(1) = 0;
for k = 2:N
AT(k) = input('Enter interarrival time : ');
end
for k = 1:N
ST(k) = input('Enter Service time : ');
end
CAT(1) = AT(1);
CDT(1) = ST(1);
for k = 1:N
WT(k) = 0;
IDT(k) = AT(1);
QL(k) = 0;
end

% Calculation
for i = 2:N
CAT(i) = CAT(i-1) + AT(i);
WT(i) = CDT(i-1) - CAT(i);
if WT(i) < 0
WT(i) = 0;
end
   
DIF = CAT(i) - CDT(i-1);
if DIF < 0
CDT(i) = CDT(i-1) + ST(i) ;
if i>2
if (CAT(i) < CDT(i-2) || QL(i-1) == 0)
QL(i) = QL(i-1) + 1;
else
QL(i) = QL(i-1);
end
else
QL(i) = QL(i-1) + 1;
end
elseif DIF > 0
CDT(i) = CAT(i) + ST(i) ;
if QL(i-1) > 0
QL(i) = QL(i-1) - 1;
end
else
QL(i) = QL(i-1);
end
if QL(i) == 0
IDT(i) = CAT(i) - CDT(i-1);
end
end

% Display Results
CAT
CDT
WT
IDT

QL
