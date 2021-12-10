disp("Lecture 1.7")
disp("Linear Independence")
disp("----------------------------")


disp("a set vectors are linear independent iff only soulution is the trivial solution")
disp("if nontrivial solution found then vectors are linear dependent")
disp("which means vectors can written as a linear combination of the others")

A = [2 4 0; -1 1 0]
rref(A)

disp("trivial solution thus linear independent vectors")

A = [1 2 3 0; 4 5 6 0; 7 8 9 0]

rref(A)

disp("x3 is free variable then infinite nontrivial solutions thus vectors are linearly dependent")

disp("the relationship is: ")
disp("put into parametric form to find relationship")
disp("free variable is x3 then let x3 = x3 then")
disp("[x1] = [1]")
disp("[x2] = [-2]")
disp("[x3] = [1]")

disp("this vectors relationship is the column vector [1; -2; 1]")
disp("knowing the relationship one can rewrite the vectors as a linear combination of the others:")

if A(:,3) == -1*A(:,1) + 2*A(:,2)
	disp("a3 = -a1 + 2a2")
end

fprintf("\n")
disp("if rows > col and homo then system is dependent because system is underdetermined which means there is a free variable which means there is infinite nontrivial solutions thus vectors are dependent")
