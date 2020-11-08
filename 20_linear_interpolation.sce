//LINEAR INTERPOLATION
clear; clc;

n=int(input("Enter no. of data points = "));
disp("Enter the data points in ascending order:");
for i=1:n
    x(i)=input("x"+string(i)+" = ");
    y(i)=input("y"+string(i)+" = ");
end

xp = input("Enter the particular value of x, at which y needs to be find out = ");

loc = find(x>xp,1);
x1=x(loc-1);
y1=y(loc-1);
x2=x(loc);
y2=y(loc);

m=(y2-y1)/(x2-x1);
yp=y1+(xp-x1)*m;

disp("Value of y at "+string(xp)+" is "+string(yp));

plot2d(x,y,-1);
xtitle("Linear Interpolation","X-Axis","Y-Axis");
