clear
clc
format rat

% Practice 1

% Question 1: find T(u) and T(v)

%A = [1/4 0 0; 0 1/4 0; 0 0 1/4];
%u = [8; 16; -12];
%v = [sym("h"); sym("b"); sym("f")];
%T(u)
%A*u
%T(v)
%A*v

% Question 2: find vector x whose image under T is b

%A = [1 -5 -6; -2 4 0];
%b =[-3; 0];
%rref([A, b])


% Question 4: find all x in R that are mapped into the zero vector by transformation x -> Ax

%A = [1 -5 6 -7; 0 1 -3 3; 2 -8 6 -8];
%[row, col] = size(A);
%z = zeros(row, 1);
%rref([A, z])

% Question 5: Use rectangular system to to plot u, v and their images under the given transformation T. Describe geometrically what T does to each vector x in R^2.

% Starts at u ends at T(u) = T*u

%u = [7; 3];
%v = [-3; 5];
%T = [-1 0; 0 -1];
%T*u
%T*v

% Question 7: Let R2 -> R2 be a linear transformation that maps x into x1v1 + x2v2. Find Matrx A such that Tx is Ax for each x.

%x = [sym("x1"); sym("x2")];
%v1 = [-3; -7];
%v2 = [-1; -2];
%A = [v1, v2]

% Question 12: R2 -> R2 rotates points about the origin through -3pi/2 radians
% recall A = [cosx -sin]
%            [sinx cosx];

%x = (-3*pi)/2
%A = [cos(x) -sin(x); sin(pi) cos(pi)]

% Question 13: R2 -> R2 is a vertical shear transformation that maps e1 into e1 - 17e2 but leaves the vector e2 unchanged.

%e1  = [1; 0];
%e2 = [0; 1];
%A = [e1 - 17*e2, e2]


% Question 14: R2 -> R2 first roatates points through -2pi/3 and then reflects points through the horizontal x1 axis.

%x = (-5*pi)/4;
%A = [cos(x) -sin(x); -sin(x) -cos(x)]

% Question 15: R2 -> R2 first performs a horizontal shear that transforms e2 into e2 + 3e1 leaving e1 unchanged and then reflects points through the line x2 = -x1

%e1 = [1; 0];
%e2 = [0; 1];
%c = 17;
%A = [e1, e2 + c*e1]

% x2 = -x1
% e2 = -e1

%A = [-e2, -e1 - c*e2]

% Question 17: T(x1, x2) = (x1 + x2, 2x1 + 3x2). Find x such that T(x) = (2,1)

%A = [1 1; 2 3];
%b = [2; 1];
%rref([A,b])

% Question 20: is matrix one to one
% linear independent = one to one
%A = [-4 7 -4 11; 6 3 -6 -15; 2 11 5 12; -3 3 8 17];
%rref(A)

% Practice 2

% Question 1: use the figure to estimate xb yb zb. confirm your estimates by using them and {b1, b2} to compute y and z.

%b1 = [0; 2];
%b2 = [2; 1];
%
%B = [b1, b2];
%x = [2; -1];
%y = [4; 4];
%z = [-0.5; -4.25];
%
%if det(B) ~= 0
%	xb = inv(B) * x
%	yb = inv(B) * y
%	zb = inv(B) * z
%else
%	disp("no B inverse")
%end

% Question 2: find bases for Col A and Nul A

%A = [1 4 2 -6; 3 12 1 4; 2 8 -1 11; 4 16 0 11];
%% Colspace are the columns where there is a pivot entry. Set of Nul A is the parameterized solution to Ax = 0
%rref(A)

% Question 3: if possible constuct matrix 3x5 st dim Nul A = 3 and dim Col A = 2

%A1 = [1 2 3 4 1; 2 3 5 6 1; 3 4 7 8 1];
%A2 = [1 2 7 8 9; 2 3 5 7 8; 3 4 7 10 11];
%A3 = [3 1 0 1 3; 0 5 0 1 1; 0 0 7 1 1];
%rref(A1)
%rref(A2)
%rref(A3)


% Question 4: Find a vector v in R3 st H = span{v}
% v is in R3 H = span{v} is a subspace of R3
%t = sym("t");
%% [-8; 5; 7];
%H = [-8*t; 5*t; 7*t];

% Question 5: is w in v? How many vectors are in span{v}? is w in the subspace spanned by v?

%v = [1 2 7; 0 1 2; -1 3 3];
%w = [3; 1; 2];
%rref([v, w])

% Question 6: Let F be 3x2 and H the set of all matrices A in M2x4 with the property FA = 0. Determine if H is a subspace of M
% H is a subspace of M because the set contains 2 x 4 zero matrix, set is closed under addition and multiplication

% Question 8: show w is in the subspace of R4 spanned by v1, v2, v3 
% w = [26; -16; 9; 58];
% v1 = [5; -2; -1; 10];
% v2 = [-4; 2; -3; -8];
% v3 = [-6; 5; -4; -15];
% rref([v1, v2, v3, w])

% Question 9: Let A be a mxn matrix. A null space is a vector space? true because it is a subspace of Rn. The column space of an mxn matrix is in Rm? True because the column space of an mxn matriix is a subspace of Rm. The column space of A is the set of all solutions Ax = b? False because Col(A) = {b: b = Ax for some x in Rn}

% Question 10: nullspace Null(A) is the set of all solutions to the homogeneous system of equations


% Question 11: Find nonzero vector in Nul A, Col A and Row A

%A = [10 8; 5 4; -10 -8; -20 -16]
%[row, space] = size(A);
%z = zeros(row, 1);
%rref([A, z])
% a null a vector [-4; 5]

% Question 12: determine if set is a basis for R3

%A = [5 5 5; 5 0 5; 5 0 0];
%rref(A)

% spans, basis for R3 and is linearly independent

% Question 12: find a basis for the vectors in R3 in the plane x - 3y + 8z = 0. Hint: think homo systems of a equations.

% then u = y*[3; 1; 0] + z*[-8; 0; 1]
% null set {[3; 1; 0], [-8; 0; 1]}

% Question 15: Assume A is row equivalent to B. Find basis for Nul A, Col A, Row A

%A = [-2 8 -2 -8; 2 -12 -3 4; -3 16 2 -8];
%rref(A)
% Null A is {[-6; -5/4; 1; 0], [-8; -1; 0; 1]}
% Col A is A(:, 1) and A(:, 2)
% Row A is A(1,:) and A(2,:)

% Question 16: find a basis for H. Basis of H is Col A. The pivot columns of H
%v = [4 1 6; -6 9 -2; 1 -5 -2]
%rref(v)

% Question 17: if B is an echelo form of a matrix A then the pivot columns of B form a basis for Col A. false because the columns of an echelon form B of A are not necessarily in the column space of A.

% Question 22: Find coordinate vector xb of x relative to the given basis B

%B = [1 -1 2; -1 2 -2; -5 5 6];
%x = [6; -7; 2];
%
%if det(B) ~=0
%	xb = inv(B) * x
%else
%	disp("no invertible")
%end

% Question 23: Find coordinate vector pt relative to the given basis B
% B ={1-t^2, t-t^2, 1+2t-t^2} pt = 2+3t-9t^2

b1 = [1; 0; -1];
b2 = [0; 1; -1];
b3 = [1; 2; -1];
x = [2; 3; -9];
B = [b1, b2, b3];

if det(B) ~=0
	xb = inv(B) * x
else
	disp("no invertible")
end









