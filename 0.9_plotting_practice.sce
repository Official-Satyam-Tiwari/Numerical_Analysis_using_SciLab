//SATYAM TIWARI
//PLOTTING FUNCTIONS IN SCILAB WITH LABELS, LEGENDS, OINE STYES AND COLORS

clear;clc;clf;

x=[-10:0.1:10];
f1=x^2+2*x+1;
f2=x^2-2*x-1;

plot(x,f1,"x-b",x,f2,"x-r");
xgrid;
xlabel("x");
ylabel("f(x)");
title("Graph of Functions");
//xtitle("Graph of Functions","x","f(x)");

h1=legend("$x^2+2x+1$","$x^2-2x-1$",pos=5);
a=gca();
a.font_size=4;
a.x_label.font_size=4;
a.y_label.font_size=4;
a.title.font_size=6;
f=gcf(); // get the handle of current graphic window
f.figure_size= [100,100]/2;
f.figure_name= "Graphs of Functions";
xs2pdf(0,"plot.pdf");
//delete(gca()); //DELETES CURRENT HANDLES OF AXIS
//xdel(0); // DELETES CURRENT FIGURE
 
