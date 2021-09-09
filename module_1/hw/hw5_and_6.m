% hw 5 and 6

disp("Question 1")

A = [1 -3 7 0; -3 3 -13 0; 1 3 11 0];

rref(A)

disp("Question 2")

A = [2 2 4 0; -4 -4 -8 0; 0 -3 -9 0];

rref(A)

disp("Question 3")

A = [1 -4 -7 5; 0 1 3 -2];

rref(A)

disp("Question 4")

A = [1 -5 4 0 -2 -1; 0 0 1 0 0 6; 0 0 0 0 1 2; 0 0 0 0 0 0];

rref(A)

disp("Question 7")


A = [4 4 8 16; -12 -12 -24 -48; 0 -7 7 14];

rref(A)


disp("Question 8")


A = [1 6 -5 0; 1 6 -5 -4];

rref(A)

disp("Question 17")


A = [-3 -12 0; 6 24 0; -5 -20 0];

rref(A)

disp("Question 21")


A = [1 2 0 -6; 1 0 2 -4; 0 0 -1 3; 1 2 1 -9];
B = [1 2 0 6; 1 0 2 0; 0 0 -1 0; 1 2 1 3];
C = [1 2 0 2; 1 0 2 -2; 0 0 -1 2; 1 2 1 0];

rref(A)
rref(B)
rref(C)



disp("Question 23")
format rat
A = [-0.9 0.8 0.4 0; 0.3 -0.9 0.2 0; 0.6 0.1 -0.6 0];
rref(A)




function y = BackwardSub(a,b)
	n = length(b);
	y(n,1) = b(n)/a(n,n);
	for i = n-1:-1:1
		y(i,1) = (b(i)-a(i,i+1:n)*y(i+1:n,1))./a(i,i);
	end
end
