fprintf("\n")
fprintf("\n")

disp("Lecture 1.2")
disp("Row reduction and Echelon")
disp("----------------------------")

fprintf("\n")
fprintf("\n")

disp("Augmented matrix is in Row Echelon Form iff")
disp("note: first nonzero entry in row is called pivot")
disp("---------------------------------------------")
disp("all pivots are 1")
disp("pivots come after each other")
disp("last row is zeros")

ref = [1 1 1 8; 0 1 1/2 5/2; 0 0 1 3]

fprintf("\n")
disp("Augmented matrix is in Reducde Row Echelon Form iff")
disp("---------------------------------------------")
disp("matrix is in ref form")
disp("the numbers above the pivots are zero")
rref = [1 0 0 4; 0 1 0 1; 0 0 1 3]

fprintf("\n")
disp("gaussian elmination and Gauss Jordan reduction")
disp("gaussisn elimination and Gauss Jordan reduction is the process of using the 3 elementary row operations  to transform the augmented matrix into ref and rref respectively")

fprintf("\n")
[L, U] = lu(ref)

fprintf("\n")
disp("reading and interpreting solution from ref/rref")
disp("-----------------------------------------------")
disp("inconsistent when row from augmented matrix is in the form ...0 0 0 1")
disp("ex: ")
ref = [0 1 4; 0 0 2]
disp("note the last row")

disp("If matrix is consistent and its number of rows is greater or equal to number of columns then there is unique solution, infinite or no solution")

fprintf("\n")
disp("underdetermined --- when more unknowns than equations and if its consistent then either infinite or no solution")

fprintf("\n")
disp("Homogeneous systems")
disp("-------------------")
disp("a system is homogeneous when right hand side vector is zeros")
homo=[1 -1 -1 0; 1 1 1 0]
disp("homogeneous systems matrix is consistent")
