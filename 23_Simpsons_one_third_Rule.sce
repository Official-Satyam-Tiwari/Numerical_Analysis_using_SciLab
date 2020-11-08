// SIMPSON'S 1/3rd RULE FOR NUMERICAL INTEGRATION

clear;clc

function y=f(x)
    y=x*sin(x);
endfunction

disp("NUMERICAL INTEGRATION using SIMPSONs 1/3rd RULE:")
disp("Function is : y=x*sin(x)");
a=input("Enter lower limit :");
b=input("Enter upper limit :");
n=int(input("Enter the value of n(iterations), *it must be even* :"));

h=(b-a)/n;
s=f(a)+f(b);

for i=1:2:n-1                //ODD MULTIPLES
    s=s+4*f(a+i*h);
end

for i=2:2:n-2               //EVEN MULTIPLES
    s=s+2*f(a+i*h);
end

I=h/3*s;

disp("Answer of integration : "+string(I));
