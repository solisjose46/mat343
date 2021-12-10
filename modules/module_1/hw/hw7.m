% Question 1

A = [5 9 6 0; 0 3 12 0; 0 -9 -48 0]
rref(A)

% Question 2

4*[2;-3] + [-8; 12]

% Question 3

A = [-2 -1 0 0; 0 -1 5 0; 1 1 -10 0; 2 1 -20 0]

rref(A)

% Question 5

h = sym("h")

A = [1 -3 3 0; 4 -11 h 0; -3 9 -9 0]

rref(A)

% Question 6

h = sym("h")

A = [1 -3 3 0; -3 10 1 0; -6 6 h 0]

A(2,:) = A(2,:) + 3*A(1,:)

A(3,:) = A(3,:) + 6*A(1,:)

A(3,:) = A(3,:) + 12*A(2,:)

disp("when h = -138 then x3 will be free then this set of vectors is lin dep")

% Question 18

k = sym("k")

A = [1 -2 4 0; 2 0 -4 0; 3 -4 6 0; 1 2 k 0]

A(2,:) = A(2,:) - 2*A(1,:)

A(3,:) = A(3,:) - 3*A(1,:)

A(4,:) = A(4,:) - A(1,:)

A(4,:) = A(4,:) - A(2,:)

A(3,:) = A(3,:) - 1/2*A(2,:)

swap = A(3,:);

A(3,:) = A(4,:);

A(4,:) = swap

A(2,:) = 1/4*A(2,:)

disp("vectors are independent for all k except when k = -8")


% Question 19

a = [-3; -6; 3; -6];
b = [9; 0; 0; 4];
c = [2; -7; 3; -1]

zeroB = zeros(4,1)

A = [1 3 0; 1 0 3; 0 0 -1; 1 3 1];

% [A, a, zeroB]

rref([A, -1*a, zeroB])
rref([A, -1*b, zeroB])
rref([A, -1*c, zeroB])

% Question 20

A = [1 1; -1 3; 4 12];

x1 = sym("x1");
x2 = sym("x2");
x3 = sym("x3");

x = [x1; x2; x3];

A = [A, x]

A(2,:) = A(2,:) + A(1,:)

A(3,:) = A(3,:) - 4*A(1,:)

A(3,:) = A(3,:) - 2*A(2,:)

A = [2; -6; 2]

A = [A, x]

A(2,:) = A(2,:) + 3*A(1,:)

A(3,:) = A(3,:) - A(1,:)

A = [1 0 0 0; 0 1 0 0; 1 2 1 0; -1 -8 -1 0; 0 0 1 8];

x4 = sym("x4");
x5 = sym("x5");

x = [x1; x2; x3; x4; x5];

A = [A, x]

A(3,:) = A(3,:) - A(1,:)
A(3,:) = A(3,:) - 2*A(2,:)
A(4,:) = A(4,:) + A(1,:)
A(4,:) = A(4,:) + 8*A(2,:)
A(4,:) = A(4,:) + A(3,:)
A(5,:) = A(5,:) - A(3,:)
A(5,:) = 1/8*A(5,:)
swap = A(4,:)
A(4,:) = A(5,:)
A(5,:) = swap



