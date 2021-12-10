clear
clc
format rat

% Question 1

%u = [-4; 4];
%v = [2; 8];
%((dot(u,v))/(dot(v,v)))*v

% Question 2: magnitude (or norm) of u

%u = [7/4; 1/2; 1];
%sym(norm(u))

% Question 3: distance between u and z

%u = [0; -3; 3];
%z = [-4; -1; 5];
%sym(norm(u - z))

% Question 4: Are vectors u and v orthogonal?

%u = [-4; 5; 6; 0];
%v = [1; -7; 17; -7];
%
%if dot(u,v) == 0
%	disp("u and v are orthogonal")
%else
%	disp("u and v ARE NOT orthogonal")
%	dot(u,v)
%end

% Question 6

%u = [-4; 5; 1];
%v = [-6; -7; 11];
%sym(dot(u,v))
%sym(norm(u)*norm(u))
%sym(norm(v)*norm(v))
%sym(norm(u+v)*norm(u+v))

% Question 7: Projection u onto v

%u = [2; 9];
%v = [-6; 3];
%(dot(u,v)/norm(v)^2)*v

% Question 8: Compute the distance from y to the line through u and the origin
% Get y onto u projection first

%y = [5; 4];
%u = [8; 6];
%yPro = (dot(y,u)/norm(u)^2)*u;
%sym(norm(y - yPro))

% Question 13: find projection v onto u and scalar component in the direction v to u
%u = [6; 4];
%v = [-3; 0];
%% projection u onto v: projvU
%(dot(u,v)/norm(v)^2)*v
%sym(dot(u,v)/norm(v))

% Question 14: projection v onto u and scalar component
%u = [-1; 0; 4];
%v = [1; 5; -5];
%(dot(u,v)/norm(v)^2)*v
%sym(dot(u,v)/norm(v))

% Question 15: find vector v in direction of line L
%p = [-8;5];
%v = [1; -1];
%yPro = (dot(p,v)/norm(v)^2)*v
%w = p - yPro
%sym(norm(w))

% Question 16: find angle between x and y
%x = [-8;1];
%y = [1; -8];
%angle = dot(x,y)/(norm(x)*norm(y)) % Input to acos is radian
%rad2deg(acos(angle)) % we want output in degrees

% Question 17: find any vector y so x and y are perpendicular
% want x and y dot == 0
%x = [1; -4; 2];
%y = [sym("y1"); sym("y2"); sym("y3")];
%dot(x,y)

% Question 18: find equation of the plane that passes through x and perpendicular to y
%x = [-4;1;3];
%y = [-1;3;-3];
%z = [sym("z1"); sym("z2"); sym("z3")]; 
%dot(y,z)
%% Input z into z to get -2
%% 3y - x - 3z = -2

% Question 19: projection v onto u

v = [3; 1; 4];
u = [3; 0; 0];
(dot(u,v)/norm(v)^2)*v

