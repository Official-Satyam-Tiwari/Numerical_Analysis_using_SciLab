// NUMERICAL INTEGRATION USING TRAPEZOIDAL RULE

clear;clc;

function y=f(x)
    y=sin(x);
endfunction

disp("NUMERICAL INTEGRATION using TRAPEZOIDAL RULE:")
disp("Function is : y=sin(x)");

a=input("Enter lower limit :");
b=input("Enter upper limit :");
n=int(input("Enter the value of n(iterations) :"));

h=(b-a)/n;
s=0.5*(f(a)+f(b));

for i=1:n-1
    s=s+f(a+i*h)
end

I=h*s;
disp("Answer of integration : "+string(I));
