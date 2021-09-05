% MAT 343 MATLAB Assignment # 1

% Question 1

A = [4 5 -3; 5 2 1; -5 -5 6;]
B = [3.8 3.8 -0.3; -0.2 1.4 1.1; 3.9 3.0 3.6]
C = [2 5 2; -6 6 3]

% i
B+A

% ii
4*A + 4*B

% iii
3 + C

% iv
A*B

% v
%A + C

% vi
C*A

% vii
%A*C

% viii
A + B

% ix
B*A

% x
4*(A + B)

% Question 1(a)
% v and vii did not execute because the dimensions were incompatible

% Question 1(b)
if (A*B) == (B*A)
	disp("question 1b true")
else
	disp("question 1b false")
end
%no, AB does not equal BA

% Question 1(c)
if (A + B) == (B+ A)
	disp("question 1c true")
else
	disp("question 1c false")
end
% Yes, A+B = B+A

% Question 1(d)
% 3 was added to every element of C

% Question 1(e)
if 4*(A + B) == 4*(A+ B)
	disp("question 1e true")
else
	disp("question 1e false")
end
% Yes, 4(A+B) = 4A+4B

% Question 2
A = [-3 9; -1 3]
B = [2 4; 3 6]
C = [-2 -6; 1 3]


% i
if A*A == zeros(2)
	disp("question 2i true")
else
	disp("question 2i false")
end


% ii
if (A-B)*(A+B) == (A*A)-(B*B)
	disp("question 2ii true")
else
	disp("question 2ii false")
end

% iii
if A*(B+C) == A*B + A*C
	disp("question 2iii true")
else
	disp("question 2iii false")
end

% iv
if B*C == zeros(2)
	disp("question 2iv true")
else
	disp("question 2iv false")
end

% v
if A*(B+C) == B*A + C*A
	disp("question 2v true")
else
	disp("question 2v false")
end

% vi
if (A+B) * (A+B) == A*A + 2*A*B + B*B
	disp("question 2vi true")
else
	disp("question 2vi false")
end

% vii
if (A*B)*(A*B) == (A*A)*(B*B)
	disp("question 2vii true")
else
	disp("question 2vii false")
end

% Question 3

A = [6 -5; 1 -5]
B = [-3 4; 4 4]
C = [-3 -2 -3; 6 -4 2]

% i
A'*B'

% ii
A*C'

% iii
B'

% iv
(A*B)'

% v
(A')'

% vi
C'*A

% vii
A'*B'

% Question 3(a)
% Matlab did not excute ii because its dimensions are incompatible.

% Question 3(b)
if (A*B)' == A'*B'
	disp("Question 3(b) Yes, (AB)^T is equal to A^T*B^T")
else
	disp("Question 3(b) No, (AB)^T does not equal A^T*B^T")
end

if (A*B)' == B'*A'
	disp("Question 3(b) Yes, (AB)^T is equal to B^T*A^T")
else
	disp("Question 3(b) No, (AB)^T does not equal B^T*A^T")
end

% Question 3(c)
if B == B'
	disp("Yes, B is symmetric. A matrix is symmetric when the matrix is equivalent to its transpose")
else
	disp("No, B is not symmetric. A matrix is symmetric when the matrix is equivalent to its transpose")
end
% Question 3(d)

% Question 4

R = round(10*rand(3))
S = round(10*rand(3))

% i
[R*S(:,1), R*S(:,2), R*S(:,3)]

% ii
[R(1,:)*S; R(2,:)*S; R(3,:)*S ]

% iii
R*S
% The product of R*S is equivalent to the matrices of i and ii

% iv
% i uses matrix column vector multiplication (right) vs ii uses row matrix multiplication (left)


% Question 5

%M = [9 9 9; 0 9 9; 0 0 9]
%N = [6 0 0; 0 6 0; 0 0 6]
%P = [7 0 0; 0 8 0; 0 0 9]
%Q = [5 5; 5 5; 5 5]

M = triu(9*ones(3))
N = diag([6 6 6])
P = diag([7 8 9])
Q = 5*ones(3, 2)

% Question 6

G = zeros(4, 7) + eye(4, 7);
G(3:4,1:2) = A
G(1:2,3:4) = B
G(1:2,5:7) = C

% Question 7

% Question 7(a)
H = G(1:3,5:7)

% Question 7(b)
E = H;
E(1,2) = 2*E(1,2)

% Question 7(c)

F = zeros(2,3)
F(1,:) = H(1,:)
F(2,:) = H(2,:)

% Question 7(d)

% It return all rows and columns of G

% Question 7(e)

% There is an error because G has 4 rows. There is no row 7.

% Question 7(f)
max(G)
% Max returns a row vector with the maximum value of each column in G.

% Question 7(g)

G(G>3)
% This reutrns all elements in G greater than 3.
G(G>3) = 300
% This replaces all elements greater than 3 with 300.
% Question 8
format rat
A = [3 5 4;-12 -23 -14;6 4 14]
A(2,:) = A(2,:) + 4*A(1,:)
A(3,:) = A(3,:) - 2*A(1,:)
A(3,:) = A(3,:) - 2*A(2,:)
A(1,:) = 1/3*A(1,:)
A(2,:) = -1/3*A(2,:)
A(3,:) = 1/2*A(3,:)
A(1,:) = A(1,:) - 5/3*A(2,:)
A(1,:) = A(1,:) - 22/9*A(3,:)
A(2,:) = A(2,:) + 2/3*A(3,:)










