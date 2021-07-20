//Aim : 2nd order RK-2 
//SATYAM TIWARI (1930205)

clc;clear;

function a=f(x, y) // dz/dx=-z*z-1     
    a=(((-1)*((g(x,y))^2))-1); 
endfunction 

function z=g(x, y) // dy/dx=z    
z=-(x/y); 
endfunction 

x=input("Enter the initial value of x=");
y=input("Enter the initial value of y="); 
h=input("Enter the spacing to be taken="); 
n=input("Enter the final value of x="); 
a(1)=x; 
b(1)=y; 
c(1)=g(x,y); 
p=2; 

for i=h:h:n 
    a(p)=a(p-1)+h; 
    p=p+1; 
end 
for i=2:(p-1) 
    k1=h*g(a(i-1),b(i-1)); 
    l1=h*f(a(i-1),b(i-1)); 
    k2=h*(g(a(i-1),b(i-1))+(l1)/2); 
    l2=h*f(a(i-1)+h/2,b(i-1)+k1/2); 
    b(i)=b(i-1)+((k1+k2)/2); 
    c(i)=c(i-1)+((l1+l2)/2); 
end 
plot(a,b);
 
//OUTPUT
//Enter the initial value of x=0
//
//Enter the initial value of y=4
//
//Enter the spacing to be taken=0.01
//
//Enter the final value of x=4
