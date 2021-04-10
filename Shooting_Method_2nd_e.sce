//SHOOTING METHOD to solve BVPs
//GIVEN ODE : T''=2T+8x(9-x)
//GIVEN BVs : T(0)=0, T(9)=0
//z=T'
//z'=T''=2*T+8*x*(9-x)

clc;clear;
function [ynew]=fnew(y,x)
    y1=y(2);    //z=T'
    y2=2*y(1)+8*x*(9-x);   //z'=T''
    ynew=[y1,y2];
endfunction

//Define all the coordinates
x0=0; y0=0;    //T(0)=0
xn=9; yn=0;    //T(9)=0

//Define starting z(0)
z00=4; //z(0)=4(say)
z01=-24; //z(0)=-24(say)
n=3;    //No of iterations to be performed
h=(xn-x0)/n;    //Stepsize

yin1=[y0,z00]   //T=[0,4]
//Euler Method
x=x0;
y1=yin1;
for i=1:n
    x=x+h;
    y1=y1+h*fnew(y1,x);
end
mprintf("The First approximation at z(0)=%d is %.4f\n",z00,y1);

yin2=[y0,z01];  //T=[0,-24]
//Euler Method
x=x0;
y2=yin2;
for i=1:n
    x=x+h;
    y2=y2+h*fnew(y2,x);
end
mprintf("The Second approximation at z(0)=%d is %.4f\n",z01,y2);

/*
Linear Interpolation
z00 -  (4) => y1
z03        => yn(0)
z01 - (-24)=> y2
*/

//Linear Polynomial
z03=z01+(z00-z01)/(y1(1)-y2(1))*(yn-y2(1));

yin3=[y0,z03];
//Euler Method
x=x0;
y3=yin3;
for i=1:n
    x=x+h;
    y3=y3+h*fnew(y3,x);
end
mprintf("The Third approximation at z(0)=%.4f is %.4f\n",z03,y3);

//OUTPUT:
//The First approximation at z(0)=4 is 4140.0000
//The Second approximation at z(0)=-24 is 2376.0000
//The Third approximation at z(0)=-61.7143 is 0.0000
