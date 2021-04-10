//SHOOTING METHOD to solve BVPs
//GIVEN ODE : T''=0.01*T-0.2
//GIVEN BVs : T(0)=40, T(10)=200
//z=T'
//z'=T''=0.01*T-0.2

clc;clear;
function [ynew]=fnew(y)
    y1=y(2);    //z=T'
    y2=0.01*y(1)-0.2;   //z'=T''
    ynew=[y1,y2];
endfunction

//Define all the coordinates
x0=0; y0=40;    //T(0)=40
xn=10; yn=200;  //T(10)=200

//Define starting z(0)
z00=15; //z(0)=15(say)
z01=10; //z(0)=10(say)
n=5;    //No of iterations to be performed
h=(xn-x0)/n;    //Stepsize

yin1=[y0,z00]   //T=[40,15]
//Euler Method
y1=yin1;
for i=1:n
    y1=y1+h*fnew(y1);
end
mprintf("The First approximation at z(0)=%d is %.4f\n",z00,y1);

yin2=[y0,z01];  //T=[40,10]
//Euler Method
y2=yin2;
for i=1:n
    y2=y2+h*fnew(y2);
end
mprintf("The Second approximation at z(0)=%d is %.4f\n",z01,y2);

/*
Linear Interpolation
z00(15) => y1
z03     => yn(200)
z01(10) => y2
*/

//Linear Polynomial
z03=z01+(z00-z01)/(y1(1)-y2(1))*(yn-y2(1));

yin3=[y0,z03];
//Euler Method
y3=yin3;
for i=1:n
    y3=y3+h*fnew(y3);
end
mprintf("The Third approximation at z(0)=%.4f is %.4f\n",z03,y3);

//OUTPUT :
//The First approximation at z(0)=15 is 210.2080
//The Second approximation at z(0)=10 is 156.1920
//The Third approximation at z(0)=14.0551 is 200.0000
