format rat

%A = [-2 -2 1; 0 1 1; 1 2 2];
%b = [4; 3; -2];
%
%A = [1 2; 5 12];
%b = [-5 0 0 0; -21 -10 -6 -12];
%
%
%A = [1 -1 1 0; 0 1 -1 1]
%
%I = eye(4)
%
%c1 = sym("c1");
%c2 = sym("c2");
%c3 = sym("c3");
%c4 = sym("c4");
%c5 = sym("c5");
%c6 = sym("c6");
%c7 = sym("c7");
%c8 = sym("c8");
%
%C = [c1 c2; c3 c4; c5 c6; c7 c8]
%
%A*C
%
%Z = [1 0 -1 0 1 0 0 0 1; 0 1 0 -1 0 1 0 0 0; 0 0 1 0 -1 0 1 0 0; 0 0 0 1 0 -1 0 1 1]
%

%Z = [1 1 1 0 0 0 1; 0 0 0 3 4 7 1; 3 4 7 0 0 0 0; 0 0 0 1 1 1 0];
%
%rref(Z)


A = [-3 -3 -2; -3 -3 -0; 1 -2 1]
I = eye(3)



I(1,:) = I(1,:) + 3*I(2,:);
















%A = [1 0 -2; 4 1 3; 2 -3 3]
%
%from =  size(A, 1) + 1;
%I = eye(size(A,1));
%AI = [A,I]
%A_inv = rref(AI)
%A_inv = A_inv(:,from:end)



%[row_num, col_num] = size(b);
%
%for i = 1:col_num
%	x = A_inv*b(:,i)
%end












function y = BackwardSub(a,b)
	n = length(b);
	y(n,1) = b(n)/a(n,n);
	for i = n-1:-1:1
		y(i,1) = (b(i)-a(i,i+1:n)*y(i+1:n,1))./a(i,i);
	end
end
