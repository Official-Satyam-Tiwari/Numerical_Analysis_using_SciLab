//SATYAM TIWARI(1930205)
//AIM = PLOTTING

function f=myquadratic(x)
    f=x^2;
endfunction

function f=myquadratic2(x)
    f=2*x^2;
endfunction

xdata = linspace(1,10,50);
ydata = myquadratic(xdata);

plot(xdata,ydata,"+-");

ydata2 = myquadratic2(xdata);

plot(xdata,ydata2,"o-");
xtitle("Quadratic Plots","X-axis","Y-Axis");
legend("x^2","2*x^2");
xs2pdf(0,"plotting_practice.pdf");
