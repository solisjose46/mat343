fprintf("\n");
fprintf("\n");

disp("Lecture 1.1")
disp("Systems of Linear Equations")
disp("----------------------------")

fprintf("\n");
fprintf("\n");

disp("Augmented Matrix")
disp("----------------------------")

disp("matrix obtained by appending the columns of two given matrices, usually for the purpose of Elementary Row Operations")
fprintf("\n");

disp("composed of coefficient matrix and righthand side vector")
fprintf("\n");
disp("example:")

disp("Coefficient Matrix A")
A = [1 1 1; 0 2 1; 0 0 3]

disp("righthand vector b")
b = [8; 5; 9]

disp("Augmented Matix Ab")
Ab = [A, b]

fprintf("\n");
disp("Elementary Row Operations")
disp("--------------------------")
disp("These are the transformations allowed on matrices to transform into equivalent system")
fprintf("\n");

disp("Interchange rows")

disp("multiply row by k_")

disp("subtract a multiple a_ of row k_ from row i_")

fprintf("\n")
disp("goal is to get augmented matrix into upper triangle form")
fprintf("\n")

disp("example:")

A = [1 1 1; 2 4 3; 1 -1 3];
b = [8; 21; 12];
Ab = [A, b]

disp("r2<-r2 - 2*r1")
Ab(2,:) = Ab(2,:) - 2*Ab(1,:)

disp("r3<-r3-r1")
Ab(3,:) = Ab(3,:) - Ab(1,:)

disp("r3<-r3+r2")
Ab(3,:) = Ab(3,:) + Ab(2,:)

fprintf("\n")
disp("System with infinte solutions")
disp("------------------")
disp("when number of unknowns is greater than number of equations then infinite solutions or no solutions")
disp("when system has infinte solutions then put into parametric form")

A = [1 0 1; 0 1 -1; 1 1 0];
b = [2;1;3];
Ab = [A,b];

Ab(3,:) = Ab(3,:) - Ab(1,:);
Ab(3,:) = Ab(3,:) - Ab(2,:)

disp("note r3, 0=0, 2 equations remain with 3 unknowns...")
disp("x3=0, assign t to x3 value and solve for t")

fprintf("\n")

disp("parametric form")
disp("[x1] = [2-t]")
disp("[x2] = [1+t]")
disp("[x3] = [t]")

fprintf("\n")
disp("System with no solutions")
disp("------------------")

A = [1 0 1; 0 1 -1; 1 1 0];
b = [2; 1; 4];
Ab = [A,b];

Ab(3,:) = Ab(3,:) - Ab(1,:);
Ab(3,:) = Ab(3,:) - Ab(2,:)

disp("note r3 where 0=1, false statement is inconsistent therefore no solution")

fprintf("\n")
disp("System property")
disp("------------------")
disp("System of solutions has either one unique solution, infinte or no solution")
