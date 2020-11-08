//LAGRANGE'S INTERPOLATION

clear;clc;

d = int(input("No. of data points you want to enter = "));
for i=1:d
    x(i)=input("x"+string(i)+" = ");
    y(i)=input("y"+string(i)+" = ");
end

n= length(x)-1; //order of the polynomial

xp = input("At which value of x, y needs to be calculated = ");

s = 0;
//L = ones(1,n+1);
//p=1;
for i = 1:n+1
    p=1;
    for j = 1:n+1
        if (j<>i) then
            //L(i) = L(i)*(xp - x(j))/(x(i) - x(j));
            p=p*(xp - x(j))/(x(i) - x(j));
        end
    end
   
    s = s + p*y(i);
end

yp=s;

disp("Value of y at "+string(xp)+" = "+string(yp));
//plot2d(x,y,[1 -4],leg="x@y"); //plotting if wanted
