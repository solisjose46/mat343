clear
clc
format rat

% find eigenvalue and bases = eigen vectors
A = [0 1; 1 0];
B = [0 1; -1 0];
C = [1 0; 0 1];
D = [1 1; 0 1];
disp("A")
fetchEigen(A);
disp("B")
fetchEigen(B);
disp("C")
fetchEigen(C);
disp("D")
fetchEigen(D);

function e = fetchEigen(A)
	[v, d] = eig(A);
	[row, col] = size(v);
	disp("eigenvalues: ")
	d
	for index = 1:col
		vec = v(:, index);
		disp("eigen vector")
		vec = vec/vec(1)
	end
end
