clear
clc
format rat

% Question 1: use Gram-Schmidt process to produce orthogonal basis for W

%x1 = [5;-9;3];
%x2 = [15;-4;9];
%v1 = x1;
%v2 = x2 - (dot(x2, v1)/dot(v1, v1))*v1

% Question 2: find a basis for the orthogonal complement of the following subspaces

%A = [9 3 -9; 3 9 9; -9 9 9];
%[m,n] = size(A);
%A = [A, zeros(m, 1)];
%rref(A)

% Question 3
% x1 = [1; -1; 0; 1];
% x2 = [5; -3;-9; 1];
% v1 = x1
% v2 = x2 - (dot(x2, v1)/dot(v1, v1))*v1

% Question 4: orthonormal basis of the subspace
% x1 = [2; -4; 5];
% x2 = [2; 6; 4];
% v1 = x1;
% v2 = x2 - (dot(x2, v1)/dot(v1, v1))*v1
% sym(norm(v1))
% sym(norm(v2))

% Question 5: Gram Schmidt procedure to produce orthogonal basis for subspace

% x1 = [-1; 3; 2; 1];
% x2 = [5; -6; -1; -5];
% x3 = [7; 3; 5; -2];
% v1 = x1
% v2 = x2 - (dot(x2, v1)/dot(v1, v1))*v1
% v3 = x3 - (dot(x3,v1)/dot(v1,v1))*v1 - (dot(x3,v2)/dot(v2,v2))*v2

% Question 6
% A = [-1 7 5; 2 -8 4; 1 -1 7; 1 -4 -3];
% x1 = A(:,1);
% x2 = A(:,2);
% x3 = A(:,3);
% v1 = x1
% v2 = x2 - (dot(x2, v1)/dot(v1, v1))*v1
% v3 = x3 - (dot(x3,v1)/dot(v1,v1))*v1 - (dot(x3,v2)/dot(v2,v2))*v2

% Question 7
% A = [-8 -12 -6 12; 1 -1 5 0; -7 -3 -21 -3; 15 15 9 27; 1 -1 5 10];
% x1 = A(:,1);
% x2 = A(:,2);
% x3 = A(:,3);
% x4 = A(:,4);
% v1 = x1
% v2 = x2 - (dot(x2, v1)/dot(v1, v1))*v1
% v3 = x3 - (dot(x3,v1)/dot(v1,v1))*v1 - (dot(x3,v2)/dot(v2,v2))*v2
% v4 = x4 - (dot(x4,v1)/dot(v1,v1))*v1 - (dot(x4,v2)/dot(v2,v2))*v2 - (dot(x4,v3)/dot(v3,v3))*v3


% Question 8: QR factorization

% Question 12: find x given QR

Q = [2/3 -1/3; 2/3 2/3; 1/3 -2/3];
R = [3 5; 0 1];
b = [5; 4; 3];
x = inv(R)*Q'*b

% A = [x1, x2, x3];
% [m,n] = size(A);
% Q = zeros(m,n);
% R = zeros(n,n);
% 
% for j = 1:n
% 	v = A(:,j);
% 	for i = 1:j-1
% 		R(i,j)=Q(:,i)'*A(:,j);
% 		v=v-R(i,j)*Q(:,i);
% 	end
% 	R(j,j)=norm(v);
% 	Q(:,j)=v/R(j,j);
% end
