//SOLVING 2ND ORDER DIFFERENTIAL EQUATION

clear;clc;

function dx=f(t,x)
    dx(1)=x(2);
    dx(2)=-x(1)/2+5/2*x(2);
endfunction

t=4:0.1:10;
sol = ode([6;-1],3,t,f);
disp(sol,"answer (value of y nd dy/dt both)");
disp(sol(1),"only value of y");
clf;
//plot2d(t,sol(1,:),-2);

//previous OUTPUT:
//  -2.1197272
//  -23.118634
//
//  "answer"
