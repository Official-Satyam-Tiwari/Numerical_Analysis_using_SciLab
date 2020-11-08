//SATYAM TIWARI (1930205)
//AIM : DECIMAL TO BINARY CONVERTOR

clear;clc;

d = input("Enter any number(in decimal) = ");
b = [];

while (d>0)
    r = modulo(d,2);
    b = [r,b];
    d = int(d/2);
end
disp("BINARY OF GIVEN NUMBER = ");
disp(b);
