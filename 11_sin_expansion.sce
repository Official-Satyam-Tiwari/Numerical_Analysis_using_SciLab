//SIN EXPANSION VIA TAYLOR SERIES

clear;clc;

n = int(input("ENTER THE VALUE OF N(iterations) : "));
x = input("ENTER THE VALUE OF X : ");

y = zeros(1,n); //CREATES A ROW MATRIX(VECTOR) WITH ALL ENTRIES 0

for  i = 0:n
y(i+1) = (-1)^i*x^(2*i+1)/factorial(2*i+1);
end

sinx=sum(y);

disp("sin("+string(x)+") = "+string(sinx));
