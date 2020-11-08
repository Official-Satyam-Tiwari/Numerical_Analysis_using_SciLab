//e^x EXPANSION VIA TAYLOR SERIES

clear;clc;

n = int(input("ENTER THE VALUE OF N(iterations) : "));
x = input("ENTER THE VALUE OF X : ");

y = zeros(1,n);

for  i = 0:n
y(i+1) = x^(i)/factorial(i);
end

ex=sum(y);

disp("e^"+string(x)+" = "+string(ex));
