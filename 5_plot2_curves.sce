// PLOTTING 2 CURVES
clf;

function y=f(x)
    y=(x^2+2*x)*exp(-x);
endfunction

function y=g(x)
    y=sin(x/2)
endfunction

x=linspace(-2,5,100);

plot(x,f,"r",x,g,"g");
