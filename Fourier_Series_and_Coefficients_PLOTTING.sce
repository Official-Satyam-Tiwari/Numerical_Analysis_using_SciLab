//SATYAM TIWARI (1930205)
//AIM : To Evaluate the Fourier Coefficients of a given periodic function
//FOURIER SERIES : f(x)=A0+sum_(n=1)^(%infinity)(An*cos(n*%pi*x/l)+Bn*sin(n*%pi*x/l))
//Periodicity = 2l

clc;clear;
funcprot(0);
function y=f(x)
    y=x; // Define the given function
endfunction

n=int(input("Enter the number of iterations : n = "));
l=input("Enter the half of periodicity: l = ");

A0=(1/l)*intg(-l,l,f,1e-2); //Calculating A0
for i=1:n
    function a=f1(x,f)
        a=f(x)*cos(i*%pi*x/l);
    endfunction
    function b=f2(x,f)
        b=f(x)*sin(i*%pi*x/l);
    endfunction
    An(i)=(1/l)*intg(-l,l,f1,1e-2); //Calculating An
    Bn(i)=(1/l)*intg(-l,l,f2,1e-2); //Calculating Bn
end

//Calculating & Plotting Fourier Series
x=input("Value of x, at which Fourier Series needs to be find out : x = ");
function series = solution(x)   //Function for calculating and plotting series
    series=A0/2;
    for i=1:n
         series=series+An(i)*cos(i*%pi*x/l)+Bn(i)*sin(i*%pi*x/l);
    end
endfunction

disp("A0 = ",A0,"An = ",An,"Bn = ",Bn,"Series = ",solution(x));

x=-5*l:0.1:5*l;
clf;
plot2d(x,solution(x),1,leg="Fourier Series",);
