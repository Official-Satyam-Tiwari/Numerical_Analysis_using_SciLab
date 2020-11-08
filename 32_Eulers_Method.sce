//EULER'S METHOD(Also known as RUNGE-KUTTA METHOD FOR 1st ORDER) TO SOLVE ODE

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
    y(i+1)=y(i)+h*f(x(i),y(i));
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
plot2d(x,[y,yexact],[-5,4]);    //  Plotting Graph


