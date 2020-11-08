//COS EXPANSION VIA TAYLOR SERIES

clear;clc;

n = int(input("ENTER THE VALUE OF N(iterations) : "));
x = input("ENTER THE VALUE OF X : ");

y = zeros(1,n);

for  i = 0:n
y(i+1) = (-1)^(i)*x^(2*i)/factorial(2*i);
end

cosx=sum(y);

disp("cos("+string(x)+") = "+string(cosx));
