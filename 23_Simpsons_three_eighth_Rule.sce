// SIMPSON'S 3/8th RULE FOR NUMERICAL INTEGRATION

clear;clc

function y=f(x)
    y=x*sin(x);
endfunction

disp("NUMERICAL INTEGRATION using SIMPSONs 3/8th RULE:")
disp("Function is : y=x*sin(x)");
a=input("Enter lower limit :");
b=input("Enter upper limit :");
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

I=3*s*h/8;

disp("Answer of Integration = "+string(I));
