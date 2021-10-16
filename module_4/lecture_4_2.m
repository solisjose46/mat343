format rat;
clear;
clc;

% Lecture 4.2

% Definition of Nullspace
% Recall the homogeneous equation Ax = b wher A is m x n matrix, and b is the zero vector
% The nullspace of A is all vectors x that satisfies the equation
% ex:

A = [1 2];
x1 = sym("x1");
x2 = sym("x2");
x = [x1;x2];

A*x

% let t = x2 then
% the nullspace of A spans (multiple of) the vector [-2t;t]
