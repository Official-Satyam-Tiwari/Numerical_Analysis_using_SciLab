//FINITE DIFFERENCES METHOD TO SOLVE LINEAR ODE
//GIVEN ODE : y''(x) + y'(x) = 0
//GIVEN Boundary Conditions : y(0)=1 , y(%pi/2)=1
//ANALYTICAL SOLUTION : y=1

clear;clc;
a=0;    //Lower Bound
b=%pi/2;    //Upper Bound
n=int(input("Enter the number of iterations : "));
dx=(b-a)/n; //dx=Step-Size
h=dx;
x=a:dx:b;   //Defining range of x

//Matrix Form (using Finite Diff Formula)
p=((1/h)+0.5);
q=(-1)*(2/h);
r=((1/h)-0.5);
A(1,1)=1;
for i=2:n
    A(i,[i-1 i i+1])=[p q r];
end
A(n+1,n+1)=1;

//Right-Hand Side
B=zeros(n+1,1); //Column Matrix
B(1)=1; //y(0)=1 : Initial Value
B(2:n)=0;   //Using Finite Diff Formula
B(n+1)=1;   //y(%pi/2)=1 : Final Value

//Solving the system
U=A\B   //Finite Difference Answer : inverse(A)*B
disp(U);

//Plotting the Obtained
plot(x,U','o');
xlabel("x");
legend("Finite Diff solution");
