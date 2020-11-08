//  Use of data obtained from Bessel Functions at N points and find its value at an intermediate point using Lagrange interpolation

clear;clc;

function y=j(n,x)  //n : order of polynomial
    s = 0;
    for m=0:30 //"30" may vary according to values or plots
        den=factorial(m)*factorial(n+m);
        s = s + ((-1)^m)*((x/2).^(n+2*m))/den;
    end
    y=s;
endfunction

n=int(input("Enter the order of polynomial : n = "));
x=input("Enter the array of x (Row Vector) : x = ");
y=j(n,x);


x=x'    //  To convert Row vector to Column Vector
y=y'    //  To convert Row vector to Column Vector
disp("Table of x and J_n(x) :");
disp([x,y]);

order= length(x)-1; //order of the polynomial

xp = input("At which value of x, J_n(x) needs to be calculated = ");

s = 0;

for i = 1:order+1
    p=1;
    for j = 1:order+1
        if (j<>i) then
            p=p*(xp - x(j))/(x(i) - x(j));
        end
    end
    s = s + p*y(i);
end

yp=s;

disp(" (Via Interpolation) Value of J_n(x) at "+string(xp)+" = "+string(yp));

