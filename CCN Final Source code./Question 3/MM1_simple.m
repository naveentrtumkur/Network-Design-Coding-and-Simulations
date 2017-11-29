%Simple MM1 simulation with the following things:-
%a) Exponential arrival time
%b) Exponnetial service time.
%c) Representation of current queue length, arrival time and departure
%time.

lambda= 5;
mu= 6.0;
targettime= 50;
nextarrival= (-1/lambda)*log(rand);
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
     nextdeparture= now + (-1/mu)*log(rand);
  end
else
  now= nextdeparture;
  currentlength= currentlength - 1;
  disp(sprintf('Departure at : %f (current length %d)', now,currentlength));
  if currentlength > 0
     nextdeparture= now + (-1/mu)*log(rand);
  else
     nextdeparture= inf;
  end
end
end