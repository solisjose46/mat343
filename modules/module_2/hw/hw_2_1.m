%% Question 1
%A = [2 0 -2; 3 -5 2];
%B = [8 -6 2; 2 -5 -4];
%C = [1 3; -2 1];
%D = [4 6; -1 4];
%
%% Question 2
%A = [5 -2 2; -4 3 -6; -4 1 3];
%
%I = eye(size(A,1));
%
%% Quesion 3
%
%A = [-2 3; 2 3; 6 -2];
%B = [4 -2; -2 3];
%
%% Question 5
%a = [3;5];
%b = [-5 4];
%a*b;
%
%b*a;
%
%% Question 6
%
%A = [5 -15; -3 9];
%
%b1 = sym("b1");
%b2 = sym("b2");
%b3 = sym("b3");
%b4 = sym("b4");
%
%B = [b1 b2; b3 b4];
%
%A*B
%
%B = [5 0 -15 0 0; 0 5 0 -15 0; -3 0 9 0 0; 0 -3 0 9 0];
%
%rref(B)
%
%B = [3 6; 1 2]
%
%% Question 7
%
%k = sym("k");
%
%A = [3 2; -2 1];
%B = [1 3; -3 k];
%
%A*B
%
%B*A
%
%% k = -2
%
%% Question 8
%
%S = [0 4 0 0 0; 0 0 4 0 0; 0 0 0 4 0; 0 0 0 0 4; 0 0 0 0 0];
%
%S*S;
%
%S*S*S;
%
%S*S*S*S;
%
%S*S*S*S*S;
%
%S*S*S*S*S*S;
%

% Question 10

a = sym("a");
b = sym("b");
c = sym("c");

u = [-4; 5; -8];
v = [a; b; c];

% Question 12

M = [2 0 -1 -1; 0 1 0 0; -1 0 1 0; -1 0 0 1];

x1 = sym("x1");
x2 = sym("x2");
x3 = sym("x3");
x4 = sym("x4");



x = [x1; x2; x3; x4];

x = [1; 0; 1; 1];

x.'*M*x;

% Question 13

A = [1 2 4; -1 1 5];
B = [5 4; -1 3; 0 -1];

A*B;

A = [2 4 2; -2 1 4; 1 0 -2];
B = [7 -2 2; 2 1 2; 3 -4 -5];

A+B;

A.';

B.';

A+B;

if (A+B).' == A.' + B.'
	disp((A+B).')
else
	disp("its not")
end

A*B;

if (A*B).' == B.'*A.'
	disp((A*B).')
else
	disp("its not")
end









