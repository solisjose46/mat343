clear
clc

format rat

% Question 1
% find vector x given coordinate vector xb and basis B
%B = [1 6 6; -4 3 -7; 4 -5 0];
%xb = [4; 0; -1];
%x = B*xb

% Question 2
% find coordinate vector xb given vector x and basis xb
%B = [1 -4 2; -1 5 -2; -2 8 6];
%x = [7; -8; 6];
%if det(B) > 0
%	xb = inv(B) * x
%end

% Question 3
% Example
% Basis
% B = {1+t^2, -t+t^2, 1-2t+t^2} 
% vector x = 1 - 3t + 6t^2
%B = [1 0 1; 0 -1 -2; 1 1 1];
%x = [1; -3; 6];
%if det(B) > 0
%	xb = inv(B) * x
%end

%B = [1 0 1; 0 1 -2; -1 -1 -1];
%x = [-2; -1; -1];
%if det(B) ~= 0
%	xb = inv(B) * x
%end

% Question 6

%v = [1 2; -3 -8];
%b = [1; 1];
%rref([v,b]);
%v = [1 2 -3; -3 -8 7];
%x1 = sym("x1");
%x2 = sym("x2");
%x = [x1; x2; 1];
%vx

% Question 8

%B = [1 3; -3 -8];
%if det(B) ~= 0
%	A = inv(B)
%end

% Question 9
%B = [1 0 1; 0 1 1; -8 0 -8; -1 2 0];

%Question 10
%t = sym("t");
%p = 1 + t;
%expand(p*p*p) * -1
%p = 3-t
%expand(p*p) * -1
%p1 = [-1; -3; -3; -1];
%p2 = [9; -6; 1; 0];
%p3 = [10; -3; 4; 1];
%p = [p1,p2,p3];
%rref(p)

% Question 12

%p = [3 0 4; 0 1 1; 1 -3 -2];
%rref(p)

% Question 13
%p = [11 14; -5 -8; 10 13; 9 12];
%x = [16; -10; 15; 14];
%rref([p,x])

% Question 14
format long
B = [2.6 0.0 0.0; -1.5 3.0 0.0; 0.0 0.0 4.8];
xb = [1/2; -1/4; 1/6];
x = B*xb










