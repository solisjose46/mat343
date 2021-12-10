% Useful references
% -----------------
% See module4/exam2 for transformation examples
% See module4/hw* for null, col, row space examples
% See module5/hw_6_1.m for plane, perpendicular plane, passing examples
% For QR factorization see https://www.emathhelp.net/en/calculators/linear-algebra/qr-factorization-calculator/

% Important definitions
% ---------------------

% If matrix is linearly independent then
% determinate does not equal zero: det(A) != 0
% only trivial solution exists: Ax = 0 only x = 0
% A_inv exists: A^-1
% columns span all Rn
% linear independent = one to one and rref shows all leading 1s

% Colspace are the columns where there is a pivot entry. Set of Nul A is the parameterized solution to Ax = 0
% nullspace Null(A) is the set of all solutions to the homogeneous system of equations


% determinate properties
% ----------------------
% If a row of matrix A is scaled by scalar k then determinate is k*det(A)
% det(A^T) = det(A)
% det(AB) = detA * detB
% if two rows of A are interchanged to make B then det(B) = -det(A)
% if A is triangular matrix then det is the product of the main diagonal entries
% det(A^-1) = 1/det(A)
% det(a) = n then det(ka) = k^det(A)*det(A)


% Properties of matrix transpose
% --------------------------------------
% (A^T)^T = A	A Transpose of Transpose is just A
% (aA)^T = aA^T		where a is a scalar
% (A + B)^T = A^T + B^T		The transpose is distributive
% (BA)^T = A^TB^T 

% Matrix Inverse Definition
% --------------------------
% An nxn matrix B is the inverse of A iff
% AB = BA = I nxn

% Tried and true functions
% ------------------------

% find x given QR: to find QR see useful references
function x = solveQR(Q, R, b)
	x = inv(R)*Q'*b;
end

% Gram-Schmidt process to produce orthogonal basis for W given 4 vectors
function [v1, v2, v3, v4] = gram4(x, y, z, a)
	[v1, v2, v3] = gram3(x,y,z);
	v4 = a - (dot(a,v1)/dot(v1,v1))*v1 - (dot(a,v2)/dot(v2,v2))*v2 - (dot(a,v3)/dot(a,v3))*v3;
end

% Gram-Schmidt process to produce orthogonal basis for W given 3 vectors
function [v1, v2, v3] = gram3(x, y, z)
	[v1, v2] = gram2(x,y);
	v3 = z - (dot(z,v1)/dot(v1,v1))*v1 - (dot(z,v2)/dot(v2,v2))*v2;
end

% orthonormal basis of the subspace (2 vectors)
function [s1, s2] = orthonormalBasis(x, y)
	[v1, v2] = gram2(x,y);
	s1 = sym(norm(v1));
	s2 = sym(norm(v2));
end

% Gram-Schmidt process to produce orthogonal basis for W given 2 vectors
function [v1, v2] = gram2(x, y)
	v1 = x;
	v2 = y - (dot(y, v1)/dot(v1, v1))*v1;
end

% find angle between x and y
function A = xAngley(x,y)
	angle = dot(x,y)/(norm(x)*norm(y)) % Input to acos is radian
	A = rad2deg(acos(angle)) % we want output in degrees
end

% vector v in direction of line L?
function l = lineProjection(p, v)
	yPro = projvU(p, v);
	w = p - yPro;
	l = sym(norm(w))
end

% scalar component in direction v to u
function s = scalarComp(u,v)
	s =sym(dot(u,v)/norm(v))
end

% distance from y to the line through u and the origin
function d = distanceProjection(y, u)
	yPro = projvU(y, v);
	d = sym(norm(y - yPro));
end

% projection u onto v
function y = projvU(u, v)
	y = (dot(u,v)/norm(v)^2)*v;
end

% are vectors u and v orthogonal
function y = isOrthogonal(u, v)
	dotPro = dot(u, v);
	if dotPro == 0
		disp("u and v are orthogonal")
	else
		disp(["u and v ARE NOT orthogonal. dot(u, v) = " dotPro])
	end
end

% Distance between vectors u and z
function D = distanceUZ(u, z)
	D = sym(norm(u - z));
end

% Rotate around x origins
function A = rotate(x)
	disp("R2 -> R2 rotation")
	A = [cos(x) -sin(x); sin(x) cos(x)];
	% disp("R2 -> R2 rotates points about the origin through x radians")
	% A = [cos(x) -sin(x); sin(pi) cos(pi)];
	% disp("R2 -> R2 rotates points through x radians and then reflects points through hori. x1 axis")
	% A = [cos(x) -sin(x); -sin(x) -cos(x)];
end

% Shows work of determinate by row
% A = array, row = row number to fix
function y = row_det(A, row)
        det_A = det(A);
        temp = A;
        B = [];
        from = 1;
        [meh, to] = size(A);

        % for rows
        for index = from:to
                temp(:,index) = [];
                temp(row, :) = [];
                B = temp;
                minor = det(B);
                cofact = (-1)^(row+index)*minor;
                disp(["(" A(row,index) ") ("  cofact ") + "])
		temp = A;
        end
        disp(" =")
        disp(det_A)
end

% Shows work of determinate by col
% A = array, col = col number to fix
function y = col_det(A, col)
        det_A = det(A);
        temp = A;
        B = [];
        from = 1;
        [meh, to] = size(A);
        % for rows
	        for index = from:to
                temp(index,:) = [];
                temp(:, col) = [];
                B = temp;
                minor = det(B);
                cofact = (-1)^(col+index)*minor;
                disp(["(" A(index,col) ") ("  cofact ") + "])
                temp = A;
        end
        disp(" =")
        disp(det_A)
end
% For LU factorization
function [L, U] = lu_nopivot(A)
        n = size(A, 1); % Obtain number of rows (should equal number of columns)
        L = eye(n); % Start L off as identity and populate the lower triangular half slowly
        for k = 1 : n
                % For each row k, access columns from k+1 to the end and divide by
                % the diagonal coefficient at A(k ,k)
                L(k + 1 : n, k) = A(k + 1 : n, k) / A(k, k);
                % For each row k+1 to the end, perform Gaussian elimination
                % In the end, A will contain U
                for l = k + 1 : n
                        A(l, :) = A(l, :) - L(l, k) * A(k, :);
                end
        end
        U = A;
        L
        U
end

% determines if q is reasonable answer for determinate of matrix size nxn for range -p to p
function y = isReasonable(n, p, q)
        np = p^n;
        np = np * n;
        if((-1*np) <= q & q <= np)
                disp([q " is a reasonable answer"])
        else
                disp([q " is not a reasonable answer"])
        end
end

% Backward Sub where a is ??? and b is ???
function y = BackwardSub(a,b)
	n = length(b);
	y(n,1) = b(n)/a(n,n);
	for i = n-1:-1:1
		y(i,1) = (b(i)-a(i,i+1:n)*y(i+1:n,1))./a(i,i);
	end
end
