//ANOTHER ODE EXAMPLE

clear;clc;clf;
funcprot(0);

function dx = f(x,y)
    dx = 2*x;
endfunction

y0 = 0;
x0 = 0;
t = [0:0.5:10];

sol = ode(y0,x0,t,f);
disp(sol,"answer");

plot2d(t,sol,-5);
