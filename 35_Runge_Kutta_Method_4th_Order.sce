//  RUNGE-KUTTA METHOD OF 4th ORDER

clear;clc;

function dy=f(x,y)
    dy=(x+y)/x; //  Take any First Order Differential Equation
endfunction

h=input("Enter the step size(For more accuracy, take h very small) : h = ");
x0=input("Enter the initial value of x : x0 = ");
y0=input("Enter the initial value of y : y0 = ");
xf=input("Enter the value of x, at which y needs to be find out : xf = ");

x(1)=x0;
y(1)=y0;
n=(xf-x0)/h;

for i=1:n
    x(i+1)=x(i)+h;
    k1=h*f(x(i),y(i));
    k2=h*f(x(i)+h*0.5,y(i)+k1*0.5);
    k3=h*f(x(i)+h*0.5,y(i)+k2*0.5);
    k4=h*f(x(i)+h,y(i)+k3);
    y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6;
end

yexact=x.*log(x)+2*x;   //  Analytical Solution
errors=yexact-y;    //  Calculating Errors
z=[x,y,yexact,errors];

disp("Table of x, y, yexact & errors : ");
disp(z);

yf=y(n+1);
ef=abs(yf-yexact(n+1));
disp("Value of y at "+string(xf)+" is : yf = "+string(yf)+" with error = "+string(ef));

clf;
plot2d(x,[y,yexact],[-5,3]);    //  Plotting Graph


