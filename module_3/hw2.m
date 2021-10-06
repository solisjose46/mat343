% hw 3.2
%
format rat
clear
clc
%
%A = [1 5 -6; 1 6 5; -1 -4 7]
%rref(A)
%det(A)
%
%
%A = [1 3 -3 -6; 0 1 2 -5; -1 2 13 -4; 3 -1 -2 3]
%rref(A)
%det(A)
%

%A = [6





%A = [2 -3 3; 3 1 2; 1 4 -2];
%det_A = det(A);
%
%temp = A;
%B = [];
%
%row = 1;
%from = 1;
%[meh, to] = size(A);
%
% for rows
%for index = from:to
%	temp(:,index) = [];
%	temp(row, :) = [];
%	B = temp;
%	minor = det(B);
%	cofact = (-1)^(row+index)*minor;
%	disp([A(row,index) " + " cofact " + "])
%
%	temp = A;
%end
%disp(" =")
%disp(det_A)
%
%

% for columns
%col = 2;
%for index = from:to
%	temp(:,col) = [];
%	temp(index, :) = [];
%	B = temp;
%	minor = det(B);
%	cofact = (-1)^(index+col)*minor;
%	disp([A(index,col) " + " cofact " + "])
%
%	temp = A;
%end
%disp(" =")
%disp(det_A)
%

%A = [5 4 6; -2 5 1; 3 -6 0];
%
%B = [0 2 -2; 1 0 2; 0 3 0];
%
%C = [4 5 -5 1; -5 1 0 2; 1 4 1 -2; 5 0 1 0];
%
%D = [1 2 5 -2 6; 2 2 1 2 0; 5 -1 3 1 0; 4 2 0 0 0; -6 0 0 0 0];
%
%det(A)
%det(B)
%det(C)
%det(D)


% for rows
%A = [3 -1 -2; 1 0 4; 4 -1 0];
%row = 3;
%from = 1;
%[to, meh] = size(A);
%temp = A;
%
%for index = from:to
%	temp(:,index) = [];
%	temp(row, :) = [];
%	A(row, index)
%	temp
%
%	temp = A;
%end
%disp(" =")
%disp(A)

%for cols
%A = [3 -1 -2; 1 0 4; 4 -1 0];
%A = A';
%col = 3;
%from = 1;
%[to, meh] = size(A);
%temp = A;
%
%for index = from:to
%	temp(index, :) = [];
%	temp(:, col) = [];
%	A(index, col)
%	temp
%
%	temp = A;
%end
%disp(" =")
%det(A)

%E1 = [7 0 0; 0 1 0; 0 0 1];
%E2 = [1 0 0; 0 0 1; 0 1 0];
%E3 = [1 0 0; 0 1 0; 0 -4 1];
%
%det(E1)
%det(E2)
%det(E3)

%
%A = [1 4 -6; -1 -3 4; -2 -5 7];
%B = [2 3 4; 2 -1 2; 1 1 3];
%C = [7 1 -1 1; 3 3 -4 5; 3 2 1 4; 1 1 -1 1];
%D = [1 4 1 1; -4 1 2 1; 1 3 1 -1; -3 3 3 -2];
%
%det(A)
%det(B)
%det(C)
%det(D)
%

%A = [8 5; 9 3]
%
%det(3*A)
%
%3*det(A)
%
%
%
%A = [3 4; 0 5]
%det(A)
%
%
%
%
