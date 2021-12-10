% Lecture 3.1

% What is a determinate?

% Scalar value to help determine if nxn matrix is singular or not

% iff det(A) = 0 then A is singular

% else det(A) != 0 then not singular and inverse A exists

% 2x2 det formula is:
% A = [ a11 a12 ]
%     [ a21 a22 ]

%   det(A) = a11*a22 - a12*a21

% A_inv = 1/det(A) * A

% Minors and cofactors

% Minor Mij is determinate of submatrix when row and column ij is deleted
%   ex:
%   A = [1 2 3]
%       [4 5 6]
%       [7 8 9]

% Minor M11 is determinate of submtrix deleting row 1 col 1
% det( [5 6]
%      [8 9])

% = 5*9 - 6*8 = -3

% cofactor Cij = (-1)^(i+j) * Mij

% Determinate 3x3 matrix
% a11*C11 + a12*C12 + a13*C13

% Determinate of nxn
% det(A) = a11*C11 + a12*C12 + ... + a1n*C1n
% note: det(A_inv) = det(A)















