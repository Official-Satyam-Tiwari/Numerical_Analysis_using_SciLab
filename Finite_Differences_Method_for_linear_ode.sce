//FINITE DIFFERENCES METHOD TO SOLVE LINEAR ODE
//GIVEN ODE : y''=12x^2
//GIVEN Boundary Conditions : y(0)=0 , y(1)=0
//ANALYTICAL SOLUTION : y=x^4-x

clear;clc;
a=0;    //Lower Bound
b=1;    //Upper Bound
n=int(input("Enter the number of iterations : "));
dx=(b-a)/n;
x=a:dx:b;

//Matrix Form (using Finite Diff Formula)
A(1,1)=1;
for i=2:n
    A(i,[i-1 i i+1])=[1 -2 1];
end
A(n+1,n+1)=1;

//Right-Hand Side
B=zeros(n+1,1); //Column Matrix
B(1)=0; //y(0)=0 : Initial Value
B(2:n)=12*x(2:n).^2*dx^2;   //Using Finite Diff Formula
B(n+1)=0;   //y(1)=0 : Final Value

//Solving the system
U=A\B   //Finite Difference Answer : inverse(A)*B
disp(U);

//Comparing with the exact solution
xf=a:0.00001:b
yf=(xf.^4)-xf; //Analytical Solution
 
//Plotting the Obtained and Exact Soltion
plot(x,U','o',xf,yf);
xlabel("x");
legend("Finite Diff","Exact");

