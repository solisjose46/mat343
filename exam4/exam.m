clear
clc
format rat

% Question 2
% u = [-7; 6; -1];
% v = [5; 4; -11];
% dot(u,v)
% norm(u)^2
% norm(v)^2
% norm(u+v)^2

% Question 3
% p, v onto w: projwV
% v = [2; 9]
% w = [-6; 3]
% p = (dot(v,w)/(norm(w)^2))*w

% Question 4
% y = [5; 3];
% u = [2; -9];
% p = (dot(y,u)/(norm(u)^2))*u
% y - p

% Question 5
% y = [4; 5];
% u = [6; 8];
% p = (dot(y,u)/(norm(u)^2))*u
% norm(y - p)

% Question 7
% A = [0 1 -1; 1 0 -1; 1 1 1; -1 1 0]
% b = [2; 2; 3; 6]
% p = A*inv(A'*A)*A'*b
% % A'Ax = A'b
% x = inv(A'*A)*(A'*b)
 
% Question 9
% constant, t, t^2
% t1 = -1; t2 = 0; t3 = 1;
% p1 = 2*t1 - t1^2;
% p2 = 2*t2 - t2^2;
% p3 = 2*t3 - t3^2;
% q1 = 4 + 3*t1^2
% q2 = 4 + 3*t2^2
% q3 = 4 + 3*t3^2
% p = [p1; p2; p3];
% q = [q1; q2; q3];
% dot(p,q)

% Question 10
% t1 = -1; t2 = 0; t3 = 1;
% p1 = 2+t1
% p2 = 2+t2
% p3 = 2+t3
% q1 = 5 - 4*t1^2
% q2 = 5 - 4*t2^2
% q3 = 5 - 4*t3^2
% p = [p1; p2; p3];
% q = [q1; q2; q3];
% sym(norm(p))
% sym(norm(q))

% Question 11
% y = [1; 1; 6];
% u1 = [-7; 1; -2];
% u2 = [-1; 1; 4];
% dot(u1, u2)
% A = [u1, u2]
% y = [1; 1; 6];
% p = A*inv(A'*A)*A'*y

% Question 13
% A = [-1 2; 2 -3; -1 3];
% b = [12; 3; 6];

% A'Ax = A'b
% x = inv(A'*A)*(A'*b)

% Question 14

% x1 = [-1; 1; 1; 1];
% x2 = [6; -8; -2; -4];
% x3 = [7; 3; 5; -3];
% v1 = x1
% v2 = x2 - (dot(x2, v1)/dot(v1, v1))*v1
% v3 = x3 - (dot(x3,v1)/dot(v1,v1))*v1 - (dot(x3,v2)/dot(v2,v2))*v2

% Question 15

u = [1; 0];
v = [0; 1];

u = [sqrt(3)/2; 1/2]
v = [-1/2; sqrt(3)/2];

u = [1; -1];
v = [1; 1];

u = [3/5; 



