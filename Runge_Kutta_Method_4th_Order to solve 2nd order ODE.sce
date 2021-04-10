// RK-4 METHOD FOR SOLVING 2ND ORDER ODE
// Solve y''+y=0 for y(0)=2 & y'(0)=3
// Analytical solution of above problem is in terms of sin and cos

clear;clc;

function dy=fz(x, y, z) // y' = z 
            dy=z
endfunction

function dz=fy(x, y, z) // z' = -y 
             dz=-y
endfunction

x(1)=0; // Boundary Conditions are given at x=0
y(1)=2; // y(<x(1)>)=2 or y(0)=2
z(1)=3; // z(<x(1)>)=3 or y'(<x(1)>)=3 or y'(0)=3
h=0.2; // Step-Size 
n=int(input("Enter the number of iterations, to perform : ")); 

for i=1:h:n
    k1=h*fz(x(i),y(i),z(i));
    l1=h*fy(x(i),y(i),z(i));
    
    k2=h*fz(x(i)+h/2,y(i)+k1/2,z(i)+l1/2);
    l2=h*fy(x(i)+h/2,y(i)+k1/2,z(i)+l1/2);
    
    k3=h*fz(x(i)+h/2,y(i)+k2/2,z(i)+l2/2);
    l3=h*fy(x(i)+h/2,y(i)+k2/2,z(i)+l2/2);
    
    k4=h*fz(x(i)+h,y(i)+k3,z(i)+l3);
    l4=h*fy(x(i)+h,y(i)+k3,z(i)+l3);
    
    x(i+1)=x(i)+h;
    y(i+1)=y(i)+(k1+2*(k2+k3)+k4)/6;
    z(i+1)=z(i)+(l1+2*(l2+l3)+l4)/6;
end

disp("y=",y(i));

scf(1);clf;
plot2d(x,[y,z],[1,2],leg="x VS y @ x VS dy/dx");
