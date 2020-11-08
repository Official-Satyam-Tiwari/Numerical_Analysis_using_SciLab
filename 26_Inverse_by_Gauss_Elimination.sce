//INVERSE OF A MATRIX BY GAUSS-ELIMINATION METHOD

disp("Inverse of a matrix by Gauss-Elimination Method");

clear;clc;

A=input("Enter the matrix A : ");
//B=input("Enter the matrix B (constant terms on RHS):");

n=size(A,1);  //number of variables or equations
x=zeros(n,1); //solution matrix
inverse=[];   //empty matrix for getting inverse of A
B=eye(n,n);   //identity matrix

//Getting upper triangular matrix
for i=1:n-1    // i=1,2 if n=3
    alpha=A(i+1:n,i)/A(i,i);
    A(i+1:n,:)=A(i+1:n,:)-alpha*A(i,:);
    B(i+1:n,:)=B(i+1:n,:)-alpha*B(i,:);
end

for j=1:n
    Btemp=B(:,j); //temporary B matrix
    
    //Doing Back Substitution for getting x matrix (n=no. of variables)
    x(n,1)=Btemp(n,1)/A(n,n); //getting value of x(3) or z
    for i=n-1:-1:1        // i=2,1 if n=3
        x(i,1)=(Btemp(i,1)-A(i,i+1:n)*x(i+1:n,1))/A(i,i); //getting value of x and y
    end
    inverse=[inverse,x];
end

disp("Inverse Matrix :");
disp(inverse);



