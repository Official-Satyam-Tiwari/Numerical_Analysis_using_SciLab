//NAIVE GAUSS ELIMINATION: SOLVE Ax=B

clear;clc;

A=[1 1 1;2 1 3; 3 4 -2];
B=[4;7;9];

Ab=[A,B]; //Augmented Matrix

// A(1,1) as pivot element
alpha = Ab(2,1)/Ab(1,1);
Ab(2,:)=Ab(2,:)-alpha*Ab(1,:) //R2=R2-alpha*R1
alpha = Ab(3,1)/Ab(1,1);
Ab(3,:)=Ab(3,:)-alpha*Ab(1,:) //R3=R3-alpha*R1

// A(2,2) as pivot element
alpha = Ab(3,2)/Ab(2,2);
Ab(3,:)=Ab(3,:)-alpha*Ab(2,:) //R3=R3-alpha*R2

//BACK SUBSTITUTION
m=size(Ab,1);
n=size(Ab,2);
x=zeros(3,1);

x(3)=Ab(3,n)/Ab(3,3);
for i=2:-1:1
x(i)=(Ab(i,n)-(Ab(i,i+1:m)*x(i+1:m,1)))/Ab(i,i);
end

disp(x);
