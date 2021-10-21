% HW 4.3

clear
clc
format rat

% Question 1, 2

%A = [9 9 9; 0 9 9; 0 9 0];

%% if matrix not square then cant be basis for Rn only span and is not linearly independent
%A = [1 -3 0 0; -6 3 0 -6; 0 0 0 4];
%det(A)

% Question 4

% Find basis for null space of matrix

%A = [1 0 -3 4; 0 1 -5 7; 3 -2 1 -2];
%[row, col] = size(A);
%z = zeros(row, 1);
%
%Az = [A, z];
%
%Az = rref(Az)
%
%% Then express this set in terms of free variables
%
%x3 = [3; 5; 1; 0]
%x4 = [-4; -7; 0; 1]


%A = [1 0 -3 4; 0 1 -2 3; 3 -5 1 -3];
%[row, col] = size(A);
%z = zeros(row, 1);
%Az = [A, z];
%Az = rref(Az)
%x3 = [3; 2; 1; 0]
%x4 = [-4; -3; 0; 1]

% Question 5


%% Basis for polynomial 
%% x - 4y +8z = 0

%y = [4; 1; 0];
%z = [-8; 0; 1];

% Question 6

%A = [-2 4 -2 -4; 2 -6 -3 1; -3 8 2 -3];
%[row, col] = size(A);
%z = zeros(row, 1);
%
%Az = [A, z];
%
%% Col space of Az
%colspace(sym(Az))
%
%% Row space of Az
%colspace(sym(Az'))'
%
%Az = rref(Az)
%
%% Then express this set in terms of free variables
%
%x3 = [-6; -5/2; 1; 0]
%x4 = [-5; -3/2; 0; 1]


% Question 7

%A = [1 1 4 -2 5; 1 1 0 2 5; 4 4 -2 10 9; 3 3 0 6 9];
%[row, col] = size(A);
%z = zeros(row, 1);
%Az = [A, z];
%% Col space of Az
%colspace(sym(Az))
%% Row space of Az
%colspace(sym(Az'))'
%Az = rref(Az)

% Question 8

%% Find basis for the space by the give set of vectors
%A = [2 4 -2 0 -20; 8 5 -5 -11 -44; -4 2 -8 10 -2; -6 -5 1 7 34; 0 4 -7 4 -19];
%[row, col] = size(A);
%z = zeros(row, 1);
%
%Az = [A, z];
%
%% Col space of Az
%colspace(sym(Az))
%
%% Row space of Az
%colspace(sym(Az'))'
%
%% The pivot columns are the basis for the set
%% columns 1,2 and 3 are the pivot columns so A(:,1), A(:,2) and A(:,3) is the basis
%Az = rref(Az)


% Question 9

% Find basis for give set of vectors

%A = [1 7 20; -6 3 0; 7 -8 -12];
%[row, col] = size(A);
%z = zeros(row, 1);
%
%Az = [A, z];
%% A(:,1) and A(:,2)
%Az = rref(Az)

% Question 10
% Row operations does not preserve linear dependence realtions among the rows of a matrix

% Question 11
% If matrix A nxn spans Rn then by invertible matrix theorem the columns are linearly independent therefore the columns of A are the basis for Rn by definition of a basis

% Question 17
h = [1 0 1; 3 3 -6; 0 -1 3; -1 1 -4];
k = [-3 3 -1; 0 2 6; -3 1 7; 6 -8 -1];
rref(h)
rref(k)
hk = [h,k]
rref(hk)












