//SOLVING LINEAR EQUATIONS
clear;clc;

disp("SOLVING LINEAR EQUATIONS HAVING x,y,z and 3 equations");

disp("For Equation 1");
x=input("Enter x coeffecient");
y=input("Enter y coeffecient");
z=input("Enter z coeffecient");
c=input("Enter constant value after = sign");
C = [x y z];
g=[c];

disp("For Equation 2");
x=input("Enter x coeffecient");
y=input("Enter y coeffecient");
z=input("Enter z coeffecient");
c=input("Enter constant value after = sign");
B = [C;x y z];
f=[g;c];

disp("For Equation 3");
x=input("Enter x coeffecient");
y=input("Enter y coeffecient");
z=input("Enter z coeffecient");
c=input("Enter constant value after = sign");
A = [B;x y z];
e=[f;c];

X=(1/e)*A;

disp("x = "+string(X(1)));
disp("y = "+string(X(2)));
disp("z = "+string(X(3)));
