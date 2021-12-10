% Practice exam 2

clear
clc
format rat

% Important notes

% determinate properties
% ----------------------
% If a row of matrix A is scaled by scalar k then determinate is k*det(A)
% det(A^T) = det(A)
% det(AB) = detA * detB
% if two rows of A are interchanged to make B then det(B) = -det(A)
% if A is triangular matrix then det is the product of the main diagonal entries
% det(A^-1) = 1/det(A)
% det(a) = n then det(ka) = k^det(A)*det(A)


% An answer is reasonable iff det is multiple of p and falls in between range -np and np
% ex: A is 3x3 matrix and range is 5 then np = 375, n = 3 p = 5*5*5


% A*D and D*A
% Right multiplication by the diagonal matrix D multiplies each column of A by the corresponding diagonal entry D. Left Multiplication by D multiplies each row of A by the corresponding entry of D.

% find B such that AB = BA --> Any multiple of Identity, I NxN,  will work

% If matrix is linearly independent then
% determinate does not equal zero: det(A) != 0
% only trivial solution exists: Ax = 0 only x = 0
% A_inv exists: A^-1
% columns span all Rn

% Question 1

%A = [1 0 -3; 4 -5 4];
%B = [7 -4 1; 1 -3 -2];
%C = [1 2; -2 1];
%D = [3 4; -2 5];
%E = [-5; 2];

% Question 5

%A = [-1 -2 -1; 0 1 1; 1 1 2];
%b = [3; 2; -1];
%det(A)
%A_inv = inv(A)
%A_inv * b

% Question 6

%A = [4 -5 -3; -4 2 2; 8 5 -2];
%b = [1; -10; 53]
%[L, U] = lu_nopivot(A);
%det(L)
%det(U)
%L_inv = inv(L);
%U_inv = inv(U);
%y = L_inv * b
%x = U_inv * y

% Question 7

%A = [3 2 -3; 3 1 -2; -1 1 -2];
%E1 = eye(size(A));
%E1(1,:) = E1(1,:) + 3*E1(2,:)
%E1*A

% Question 8

%A = [-2 0 -3; 10 1 9; 8 0 10];
%b1 = [-12; 39; 40];
%b2 = [-1; 17; 10];
%[L, U] = lu_nopivot(A);
%det(L)
%det(U)
%det(A)
%A_inv = inv(A);
%x1 = A_inv * b1
%x2 = A_inv * b2

% Question 9

%A = [2 0 4; 2 4 2; 0 4 -1];
%row_det(A, 1)
%col_det(A, 2)

% Question 11

%A = [4 11; 1 3];
%B = [2 2 -3; -2 -3 3];
%det(A)
%A_inv = inv(A);
%A_inv * B

% Question 13

%n = 3
%p = 5
%isReasonable(n, p, 200)
%isReasonable(n, p, -280)
%isReasonable(n, p, 1000)
%isReasonable(n, p, -40)

% Question 14

%B = [2 0 2; 1 2 2; 1 3 1];
%det(B^4)
%det(B)^4

% Question 15

A = [6 12; 18 34];

[L, U] = lu_nopivot(A)



% determines if q is reasonable answer for determinate of matrix size nxn for range -p to p
function y = isReasonable(n, p, q)
np = p^n;
np = np * n;
if((-1*np) <= q & q <= np)
	disp([q " is a reasonable answer"])
else
	disp([q " is not a reasonable answer"])
end
end

% Shows work of determinate by row
% pass in row_det(A, row)

function y = row_det(A, row)
det_A = det(A);
temp = A;
B = [];
from = 1;
[meh, to] = size(A);

% for rows
for index = from:to
       temp(:,index) = [];
       temp(row, :) = [];
       B = temp;
       minor = det(B);
       cofact = (-1)^(row+index)*minor;
       disp(["(" A(row,index) ") ("  cofact ") + "])
       temp = A;
end
disp(" =")
disp(det_A)
end

% Shows work of determinate by row
% pass in row_det(A, row)

function y = col_det(A, col)
det_A = det(A);
temp = A;
B = [];
from = 1;
[meh, to] = size(A);

% for rows
for index = from:to
       temp(index,:) = [];
       temp(:, col) = [];
       B = temp;
       minor = det(B);
       cofact = (-1)^(col+index)*minor;
       disp(["(" A(index,col) ") ("  cofact ") + "])
       temp = A;
end
disp(" =")
disp(det_A)
end

function [L, U] = lu_nopivot(A)

n = size(A, 1); % Obtain number of rows (should equal number of columns)
L = eye(n); % Start L off as identity and populate the lower triangular half slowly
for k = 1 : n
    % For each row k, access columns from k+1 to the end and divide by
    % the diagonal coefficient at A(k ,k)
    L(k + 1 : n, k) = A(k + 1 : n, k) / A(k, k);

    % For each row k+1 to the end, perform Gaussian elimination
    % In the end, A will contain U
    for l = k + 1 : n
        A(l, :) = A(l, :) - L(l, k) * A(k, :);
    end
end
U = A;

L
U

end
