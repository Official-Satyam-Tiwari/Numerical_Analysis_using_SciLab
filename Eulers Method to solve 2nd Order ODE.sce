//EULER'S METHOD TO SOLVE 2nd order ODE

clear;clc;

function a=f(x, y) // dz/dx=-z*z-1     
    a=(((-1)*((g(x,y))^2))-1); 
endfunction 

function z=g(x, y) // dy/dx=z    
z=-(x/y); 
endfunction 

x = input("Enter the initial value of x="); 
xn= input("Enter the final value of x="); 
y = input("Enter the initial value of y="); 
h = input("Enter the spacings="); 

a(1)=x; 
b(1)=y; 
p=1; 

for i= x:h:xn 
    a(p)=x+(p-1)*h; 
    p=p+1; 
end 
for i=2:(p-1) 
    b(i)=b(i-1)+h*f(a(i-1),b(i-1)); 
end 

clf(); 
plot(a,b); 

//OUTPUT
//Enter the initial value of x=0
//
//Enter the final value of x=4
//
//Enter the initial value of y=4
//
//Enter the spacings=0.1
