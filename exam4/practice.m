clear
clc
format rat

% Practice Questions

% Section 6.1
% Given
v = [1; -2; 0; 1];
w = [2; -3; 1; 2];

% A1
% a) Find the vector projection p, of v onto w
% p, v onto w: projwV

p = (dot(v,w)/(norm(w)^2))*w


% b) Verify that v - p is orthogonal to p
% Solution: if dot product is zero then orthogonal
ans = v - p
dot(ans, p)

% c) Find the distance from the vector v to the line spanned by the vector w
% Solution: distance is |v-p|
norm(v-p)


% A2
% Find the projection of v the two planes x + y + z = 0 and 2x -y - z = 0
v = [1; 2; 1]; % given

% Solution: 
% from the planes:
A = [1 1 1 0; 2 -1 -1 0]
A = rref(A)
% choose any t
t = 1
x = [0; -t; t] % from parameterized solution from the rref
w = x;
% projection v onto w
p = (dot(v,w)/(norm(w)^2))*w

% A3
a = [1; 1; -1]; b = [2; 3; 4]; % given
% Find the point Q of the line spanned by a, that is closest to b
% Solution: Q has the points contained by the projection of b onto a
Q = (dot(a,b)/(norm(a)^2))*a


% A4
% Find the distance from the point (2,1,1) to the plane 2x - y + 2z = 0
% Solution: The distance from the point to the plane is given by the absolute value of the scalar projection of the vector 
v = [2; 1; 1];
N = [2; -1; 2];
abs(dot(v,N))/norm(N)

% Section 6.1 - 6.3

% B1
A = [4 -2; 1 3; 2 1; 3 4]
% Determine a basis for each of the subspaces R(A^T), N(A), R(A), N(A^T)
% Solution:
% To find col/row space do rref and the cols/rows with pivots are the cols/rows in the og matrix
U = rref(A) % the nonzero rows form a basis for the row space of A
% R(A^T) is [1; 0] [0; 1]
% For null space do rref, then find vectors that produce the zero vector
U = rref(A')
U = [-5/14 -5/14 1; -4/7 -11/7 1] % set x3 = 1 and x4 = 0 then x3 = 0 and x4 = 1; the results are the null space vectors

% B2
v = [-1; 2; 1];
% Find a basis for the othogonal complement in R3 of the line spanned by v
% Solution: find the null space
% [1 0 1], [2 1 0]

% B3
% Let W span( [1; 1; 2], [2; 3; 1])
% b) Find a basis for the orthogonal complement of W T 
% solution: find the null space
A = [1 2; 1 3; 2 1];
rref(A')
% [-5; 3; 1];

% B5
v1 = [1; 2; 0; 1]; v2 = [3; 4; -1; 1];
% solution: Find a basis for the orthogonal complement of span(v1, v2)
A = [v1, v2]
rref(A')
% [1; -1/2; 1; 0] [1; -1; 0; 1]


% Section 6.2

% C1
% Let S span([0; 1; 0], [1; 1; 1])
v = [5;- 3; 4]
% a) Find the projection martix P that projects vectors in R3 onto S
A = [0 1; 1 1; 0 1];
P = A*inv(A'*A)*A'
% b) Find the orthogonal projection of v on s
p = P*v
% c) Find the distance v to s
norm(v-p)


% C2
% plane: x + y + z = 0
b = [1; 2; 1] % given
% a) Find a basis for this plane
% Solution: basis of plane is the nullspace of the matrix [1 1 1]
% [-1 1 0] [1 0 -1]

% b) Find the orthogonal projection of b on to the plane 
A = [-1 1; 1 0; 0 -1]
p = A*inv(A'*A)*A'*b

% C3
% a) Find the least squares solution to the system Ax = b
% x1 + x2 = 3
% 2x1 -3x2 = 1
% 0x1 + 0x = 2
A = [1 1; 2 -3; 0 0]
b = [3; 1; 2]
% A'Ax = A'b
x = inv(A'*A)*(A'*b)

% b) Determine the projection p of b onto R(A)
p = A*x
% c) Calculate the residual r(x)
rx = b - A*x
% d) verify that r(x) belongs to the set N(A^T)
A'*rx % should be zero vector

% C4
% Find the best least squares fit by a quadratic function to the data

% C5
% Find the least squares fit by a function of the form f(x) = c0 + c1*Sin(x) + c2*cos(x) to the data

% Section 6.7
% D1
% D2
% D3

% Section 6.2
% 


% Section 6.4
