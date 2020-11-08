//SOLVING DEFINITE INTEGRALS

clear;clc;

function c=f(x)
    c=sin(x);
endfunction

a=input("Enter initial limit = ");
b=input("Enter final limit = ");

answer = intg(a,b,f);
disp("Answer = "+string(answer));

//USING INTEGRATE FUNCTION
disp("Another function",integrate('sin(x)','x',0,2));
