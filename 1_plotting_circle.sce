//PLOTTING A CIRCLE

clear;clc;

r = input("Enter the radius of the circle");
theta = -2*%pi:0.01:2*%pi;

x = r*cos(theta);
y = r*sin(theta);

plot(x,y);
