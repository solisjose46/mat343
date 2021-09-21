% Lecture 2.1
% Matrix Algebra

% Properties of matrix product
% --------------------------------------
% A(B + C) = AB + AC	right mult.
% (A + B)C = AC + BC	left mult.

% Properties of matrix transpose
% --------------------------------------
% (A^T)^T = A	A Transpose of Transpose is just A
% (aA)^T = aA^T		where a is a scalar
% (A + B)^T = A^T + B^T		The transpose is distributive
% (BA)^T = A^TB^T 

% Matrix Inverse Definition
% --------------------------
% An nxn matrix B is the inverse of A iff
% AB = BA = I nxn

format rat
A = [2 1; -1 1]
B = [1/3 -1/3; 1/3 2/3]

I = eye(size(A,1));

if A*B == B*A & A*B == I
	disp("B is inverse of A! and vice versa")
else
	disp("A is inverse of B!");
end

% If matrix does not have inverse then it is singular

% If matrix has inverse then its transpose is the inverse
% A^-1 = A^T

% Inverse Properties
% --------------------
% (AB)^-1 = B^-1A^-1

% A is symmetric iff A = A^T


% How to find the Inverse
% ------------------------
% Recall AB = I nxn
% if this fails then A is singular
% Augment matrix AI then get AI to rref form
% the non identity part is A^-1
% ex:
A = [-2 -6 -13; 0 1 1; 1 3 6]
I = eye(size(A,1))

AI = [A,I]
AI = rref(AI)
Inverse_A = AI(:,[4 5 6])

% Inverse and the solution of Ax = b
% -----------------------------------
% if A has inverse then
% Ax = b --> A^-1Ax = A^-1B --> x = A^-1B

% AB = AC --> B = C











