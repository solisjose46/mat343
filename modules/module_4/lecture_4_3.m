format rat;
clear;
clc;

% Lecture 4.3

% Linear independence part 2

% Let p(1) = 1, p(2) = t and p(3) = t^2

% Show if these polynomials are linearly independent

% then: x1*p(1) + x2*p(2) + x3*p(3) = 0

% x1 +tx2 + t^2x3 = 0

% let t = 1, 0, -1 then

% x1 + x2 + x3 = 0
% x1 + 0 + 0 = 0
% x1 - x2 + x3 = 0

A = [1 1 1; 1 0 0; 1 -1 1];
det(A)

% det(A) != 0 thus is not independent
