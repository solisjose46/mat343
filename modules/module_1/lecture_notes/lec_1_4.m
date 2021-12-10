% Lecture 1.4 Matrix equation

% Matrix vector multiplication
% ----------------------------

% Matric vector product in the form Ax = b, where A is a coefficient matrix and X the vector
% of unknowns

% Case 1 (A is a row vector and x is a column vector)
% This turns out to be the dot product. Solution is a scalar.
% 1xn nx1 --> 1x1

A = [-1 2]
x = [5;3]
b = A*x

% Case 2 (Matrix times column vector)
% The product in this case is a column vector.
% nxn nx1 --> nx1

A = [1 2; 3 -1]
x = [5;3]
b = A*x

% Consistency Theorem
% -------------------
% Ax=b is consistent iff b can be written as a linear combination of the columns of A.
% The coefficiens of the linear combination are the elements of x.



