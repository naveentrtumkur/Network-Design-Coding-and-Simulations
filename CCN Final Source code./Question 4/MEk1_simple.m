%Simple MM1 simulation with the following things:-
%a) Exponential arrival time
%b) Exponnetial service time.
%c) Representation of current queue length, arrival time and departure
%time.

lambda= 5;
mu= 6.0;
targettime= 100;
nextarrival= (-1/lambda)*log(rand);
k = 4;
now= 0;
nextdeparture= inf;  % infinity
currentlength= 0;
while now < targettime
if nextarrival < nextdeparture
  now= nextarrival;
  currentlength= currentlength + 1;
 disp(sprintf('Arrival at : %f (current length %d)', now, currentlength));
  nextarrival= now + (-1/lambda)*log(rand);
  if currentlength == 1
      
      %display(erlang);
     %nextdeparture= now + erlang;
     nextdeparture= now + erlang_ditribution(mu,k);
  end
else
  now= nextdeparture;
  currentlength= currentlength - 1;
  disp(sprintf('Departure at : %f (current length %d)', now,currentlength));
  if currentlength > 0
     % Service time is erlang distributed. So you need to compute this
     % part using erlang_distribution function.
     %erlang = erlang_ditribution(mu,k);
     nextdeparture= now + erlang_ditribution(mu,k);
  else
     nextdeparture= inf;
  end
end
end