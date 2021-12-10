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

%A = [3 0 -1; 4 -6 4];
%B = [8 -5 1; 2 -4 -3];
%
%C = [1 3; -2 1];
%D = [2 6; -2 3];
%E = [-6;4];
%
%A + 4*B
%D*B

% Question 2

%A = [1 1 1; 1 5 6; 1 6 7];
%D = [4 0 0; 0 5 0; 0 0 2];
%
%A*D

% Question 3

%a = sym("a");
%b = sym("b");
%c = sym("c");
%
%u = [-2;3;-5];
%v = [a; b; c];
%
%u'*v
%v'*u
%u*v'
%v*u'

% Question 4

%S = [0 8 0 0 0; 0 0 8 0 0; 0 0 0 8 0; 0 0 0 0 8; 0 0 0 0 0];
%
%S*S
%S*S*S
%S*S*S*S
%S*S*S*S*S
%S*S*S*S*S*S


% Question 5

%A = [3 5; -7 -5];
%
%if det(A) ~= 0
%	disp(inv(A))
%else
%	disp("A does not have an inverse")
%end

% Question 6

%A_inv = [1 1; -2 -7/3];
%b = [12; 3];
%A_inv*b

% Question 8

%A = [18 0 0; 18 18 0; 18 18 18];
%B = [18 0 0 0; 18 18 0 0; 18 18 18 0; 18 18 18 18];
%
%inv(A)
%inv(B)

% Question 9

%x1 = sym("x1");
%x2 = sym("x2");
%x3 = sym("x3");
%x4 = sym("x4");
%x5 = sym("x5");
%x6 = sym("x6");
%x7 = sym("x7");
%x8 = sym("x8");
%A = [-1 0 1 1; 1 1 0 -1];
%D =[x1 x2; x3 x4; x5 x6; x7 x8];
%A*D;
%C = [-1 0 0 0 1 0 1 0 1; 0 -1 0 0 0 1 0 1 0; 1 0 1 0 0 0 -1 0 0; 0 1 0 1 0 0 0 -1 1];
%rref(C);
%D1 = [-0 0; 0 1; 1 0; 0 0];
%A*D1;
%E =[x1 x2; x3 x4; x5 x6; x7 x8];
%E*A

% Question 10

%A = [0 1 -4; 1 0 2; -2 -3 8];
%
%A_det = det(A);
%
%if A_det ~= 0
%	disp("Matrix is invertible")
%else
%	disp("Matrix is not invertible")
%end

% Question 13

%A = [4 -6 -4; -4 2 3; 8 8 -4];
%L = [1 0 0; -1 1 0; 2 -5 1];
%U = [4 -6 -4; 0 -4 -1; 0 0 -1];
%b = [2; -17; 84];
%
%
%L_det = det(A);
%U_det = det(U);
%
%L_inv = inv(L);
%U_inv = inv(U);
%
%y = [];
%x = [];
%
%if L_det ~= 0
%	disp("y = L^-1*b")
%	y = L_inv * b
%	if U_det ~= 0
%		disp("x = U^-1 * y")
%		x = U_inv * y
%	else
%		disp("U is not invertible")
%	end
%else
%	disp("L is not invertible!")
%end
%

%R = [A,b]
%rref(R)


% Question 14

%A = [-3 0 3; 6 3 -3; 6 15 18];
%
%lu_nopivot(A)
%

% Question 15

%A = [4 -4 5; 5 1 4; 1 5 -1]
%row_det(A, 1)
%col_det(A, 2)

% Question 16

%isReasonable(3, 4, 100)
%isReasonable(3, 4, -120)
%isReasonable(3, 4, 500)
%isReasonable(3, 4, 40)


% Question 17

%A = [5 5 -5; -3 -2 2; -6 9 15];
%
%rref(A)

% Question 20

%A = [10 4 2; 2 -12 4; 0 20 -6]
%det(A)

% Question 20

%A = [-7 6 -7; 5 -4 0; -2 -7 4]
%det(A)

% Question 20

%A = [6 4 -4 0; -5 6 1 0; 6 0 -3 0; 5 6 0 -5]
%det(A)

% Question 26
%A1 = [1 1 5; -1 1 5];
%B1 = [4 5; -2 2; 0 -2];
%A2 = [2 2 1; -2 2 5; 1 0 -3];
%B2 = [7 -3 3; 2 2 4; 2 -4 -5];

% Question 27
%A = [4 7; 1 2];
%B = [1 3 -4; -1 -2 4];
%x1 = sym("x1");
%x2 = sym("x2");
%x3 = sym("x3");
%x4 = sym("x4");
%x5 = sym("x5");
%x6 = sym("x6");
%X = [x1 x2 x3; x4 x5 x6];

% Question 29

%A = [-1 -2 2; 1 -1 -1; 1 -2 3];
%E = eye(size(A));
%E(1,:) = E(1,:) + 2*E(2,:);
%E*A
%E = eye(size(A));
%temp = E(1,:);
%E(1,:) = E(3,:);
%E(3,:) = temp
%E*A
%E = eye(size(A));
%E(3,:) = -2*E(3,:)
%E*A

% Question 31

%A = [0 1 5; 7 8 32; 1 1 4];
%inv(A)
%E1 = eye(size(A));
%temp = A(3,:);
%A(3,:) = A(1,:);
%A(1,:) = temp;
%temp = E1(3,:);
%E1(3,:) = E1(1,:);
%E1(1,:) = temp;
%E2 = eye(size(A));
%A(2,:) = A(2,:) - 7*A(1,:);
%E2(2,:) = E2(2,:) - 7*E2(1,:);
%E3 = eye(size(A));
%A(3,:) = A(3,:) - A(2,:);
%E3(3,:) = E3(3,:) - E3(2,:);
%E4 = eye(size(A));
%A(2,:) = A(2,:) - 4*A(3,:);
%E4(2,:) = E4(2,:) - 4*E4(3,:);
%E5 = eye(size(A));
%A(1,:) = A(1,:) - A(2,:);
%E5(1,:) = E5(1,:) - E5(2,:);
%E1
%E2
%E3
%E4
%E5

% Question 32

A = [-1 0 -1; 3 1 -3; 3 0 0];
b1 = [-2; -3; 0];
b2 = [-1; 16; 12];

lu_nopivot(A)



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
		disp(["(" A(row,index) ") ("  cofact ") + "]
		)temp = A;
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
