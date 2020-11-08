// SOLUTION OF ORDINARY DIFFERENTIAL EQUATION (GIVEN INITIAL CONDITION)

clear;clc;

funcprot(0);
function dx=f(x,y)
    dx = -2*y+x;
endfunction

y0=-1;
x0=0;
t=0.4;

sol = ode(y0,x0,t,f);
disp(sol,"answer");

//OUTPUT :-
//  -0.3869968
//  "answer"
