%Function that creates random real number between 0 and 1.
% Input: num -- Number of random numbers to be generated.
%Output: r1 -- Array of random values generated.
% Just creation of a random number vector and return that to calling
% function.
function [r1]= MatLab1(num)
    for i=1:num
        r1(i) = rand();
    end
end