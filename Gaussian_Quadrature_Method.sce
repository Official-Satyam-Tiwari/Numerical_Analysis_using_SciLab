//GAUSS-LEGENDRE QUADRATURE METHOD (Numerical Integration)
//Compare the result with the one obtained from Simpson's Method

clc;clear;

disp("Computing using Gauss-Legendre Quadrature method : ");
disp("Function is : y=(1/sqrt(2*%pi*sig^2))*(exp(-((x-2)^2)/(2*sig^2)))*(x+3)");
sig=input("Enter the value of sigma : ");
a=input("Enter Lower Limit : ");
b=input("Enter Upper Limit : ");
g=input("Gauss Point Formula (2 or 3) : ");
function f=F(x)
    t=(x*(b-a)+(b+a))/2;    //Limit Change from a to b => -1 to 1
    f=(1/sqrt(2*%pi*sig^2))*(exp(-((t-2)^2)/(2*sig^2)))*(t+3);    //Input function for integrating
endfunction
if g==2 then
    w=[1 1];
    x=[1/sqrt(3) -1/sqrt(3)];
    sum=0;
    for i=1:length(w)
       sum=sum+w(i)*F(x(i)); 
    end
    sum=sum*(b-a)/2;
    disp("Answer obtained using Gauss-Legendre Quadrature Method : ",sum);
elseif g==3 then
    w=[5/9 8/9 5/9];
    x=[sqrt(3/5) 0 -sqrt(3/5)];
    sum=0;
    for i=1:length(w)
       sum=sum+w(i)*F(x(i)); 
    end
    sum=sum*(b-a)/2;
    disp("Answer Obtained using Gauss-Legendre Quadrature Method : ",sum);
else 
    disp("Formula not available!");
end

//SIMPSON'S 3/8 METHOD
function y=f(x) //Redefining function for simpson's method(Simply in the form of x)
    y=(1/sqrt(2*%pi*sig^2))*(exp(-((x-2)^2)/(2*sig^2)))*(x+3);
endfunction
disp("Computing using Simpsons 3/8th rule : ");
n=int(input("Enter the value of n(iterations), *it must be multiple of 3* :"));
h=(b-a)/n;
s=f(a)+f(b);
for i=1:n-1
    if modulo(i,3)==0
        s=s+2*f(a+i*h);
    else
        s=s+3*f(a+i*h);
    end
end
Is=3*s*h/8;
disp("Answer of Integration using Simpsons 3/8th rule = "+string(Is));

I=integrate("(1/sqrt(2*%pi*sig^2))*(exp(-((x-2)^2)/(2*sig^2)))*(x+3)","x",a,b);
disp("Exact Answer : ",I);

errorg = abs(I-sum);
errors = abs(I-Is);
disp("Error in Gauss Quadrature method : ",errorg);
disp("Error in Simpsons 3/8th rule : ",errors);


//OUTPUT FOR y=exp(x)*cos(x)
//
//  "Computing using Gauss-Legendre Quadrature method : "
//
//  "Function is : y=exp(x)*cos(x)"
//Enter Lower Limit : -1
//
//Enter Upper Limit : 1
//
//Gauss Point Formula (2 or 3) : 3
//
//
//  "Answer Obtained using Gauss-Legendre Quadrature Method : "
//
//   1.9333905
//
//  "Computing using Simpsons 3/8th rule : "
//Enter the value of n(iterations), *it must be multiple of 3* :50
//
//
//  "Answer of Integration using Simpsons 3/8th rule = 1.9259205"
//
//  "Exact Answer : "
//
//   1.9334215
//
//  "Error in Gauss Quadrature method : "
//
//   0.0000310
//
//  "Error in Simpsons 3/8th rule : "
//
//   0.0075010
//
//OUTPUT FOR y=1/(x^2+1)
//  "Computing using Gauss-Legendre Quadrature method : "
//
//  "Function is : y=1/(x^2+1)"
//Enter Lower Limit : -1
//
//Enter Upper Limit : 1
//
//Gauss Point Formula (2 or 3) : 3
//
//
//  "Answer Obtained using Gauss-Legendre Quadrature Method : "
//
//   1.5833333
//
//  "Computing using Simpsons 3/8th rule : "
//Enter the value of n(iterations), *it must be multiple of 3* :50
//
//
//  "Answer of Integration using Simpsons 3/8th rule = 1.5681957"
//
//  "Exact Answer : "
//
//   1.9334215
//
//  "Error in Gauss Quadrature method : "
//
//   0.3500882
//
//  "Error in Simpsons 3/8th rule : "
//
//   0.3652258
