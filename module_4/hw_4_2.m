format rat;
clear;
clc;

% Homework 4.2

% Question 1

% To check if w is in null(A) then A*w
% if zero then it is in null(A)

%A = [5 -2 -4; 7 -1 -1; -1 4 4];
%w = [3; 2; 1];
%A*w

% Question 2

%A = [1 4 6 0; 0 1 3 -6];
%x1 = sym("x1");
%x2 = sym("x2");
%x3 = sym("x3");
%x4 = sym("x4");
%x = [x1;x2;x3;x4];

% Question 3

%A = [1 -4 0 -3 0; 0 0 1 -4 0; 0 0 0 0 -5];
%x1 = sym("x1");
%x2 = sym("x2");
%x3 = sym("x3");
%x4 = sym("x4");
%x5 = sym("x5");
%x = [x1;x2;x3;x4;x5];
%A*x

% Question 4

%x1 = sym("x1");
%x2 = sym("x2");
%x3 = sym("x3");
%x4 = sym("x4");
%w = [0; -5; 1; 1];
%A = [x1 -1 0 x2; -3 0 x3 x4];
%A*w

% Question 9

% Let A be m x n, then null A will be R^n

%A = [-8 4; 2 -1; 8 -4; 4 -2];
%x1 = sym("x1");
%x2 = sym("x2");
%w = [x1;x2];
%rref(A) * w

% Question 10

%A = [-8 -2 -26; 4 6 18; 2 0 6]
%w = [3; 1; -1]
%A*w

% Question 13

%A = [7 6 -4 1; -5 -3 0 -3; 9 -13 7 -3; 19 -7 7 3];
%w = [1; 1; -3; -5];


% Question 14

%v = [5 3 9 0 0; 2 6 -1 -20 0; 7 9 3 -12 0];

% Question 16

A = [-11 7 -3 0; -5 2 1 4; 10 -8 6 6; 3 -2 1 0];
w = [1; 2; 1; 0];






















