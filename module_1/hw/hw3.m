fprintf("\n")
fprintf("\n")
disp("hw3")
disp("-----------")

v1 = [5; -5; 2];
v2 = [3; 2; -2];
v3 = [-5; -4; -3];
v4 = [-6; 9; 5];

m1 = 8;
m2 = 20;
m3 = 8;
m4 = 4;

m = m1 + m2 + m3 + m4;

v = (1/m).*(m1.*v1 + m2.*v2 + m3.*v3 + m4.*v4)

function y = BackwardSub(a,b)
	n = length(b);
	y(n,1) = b(n)/a(n,n);
	for i = n-1:-1:1
		y(i,1) = (b(i)-a(i,i+1:n)*y(i+1:n,1))./a(i,i);
	end
end
