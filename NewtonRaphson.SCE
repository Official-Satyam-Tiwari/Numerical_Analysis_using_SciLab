//NEWTON RAPHSON METHOD (for finding root of real valued function)

clc;clear;close;

x0=input("Enter the initial guess : x0 = ");
e=input("Enter the value of tolerance : e = ");

deff("y=f(x)","y=x-exp(-x)");
deff("y=fd(x)","y=1+exp(-x)");

i=0;
printf("\n n \t\t\t x0 \t\t\t x1");
x1=x0-f(x0)/fd(x0);
printf("\n--------------------------------------------------------"); 
printf("\n %0.0f \t\t\t %0.4f \t\t %0.4f",i,x0,x1); 


while(abs(x1-x0)>e)
   x0=x1;
   x1=x0-f(x0)/fd(x0);
   i=i+1;
   printf("\n %0.0f \t\t\t %0.4f \t\t %0.4f",i,x0,x1); 
end

printf("\n\n The value of root x after %0.0fth iteration = %f",i,x1);

