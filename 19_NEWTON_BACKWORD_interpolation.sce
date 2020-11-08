//NEWTON-GREGOR BACKWORD INTERPOLATION METHOD [INTERPOLATION for equal interval]

clear;clc;

n = int(input("Enter no. of data points = "));

for i=1:n
    x(i)=input("x"+string(i)+" = ");
    y(i,1)=input("y"+string(i)+" = "); //make y a matrix of n*n
end

xg = input("Enter the particular value of x, at which y needs to be find = ");
h=x(n)-x(n-1);
u=(xg-x(n))/h;

for j=2:n
    for i=j:n
        y(i,j)=y(i,j-1)-y(i-1,j-1);
    end
end

//header=["x","y","Dy","D^2y","D^3y","D^4y"];
disp("Backward Difference Table :");
////disp(header);
//table = [x,y];
//disp(table);
for i=1:n
    mprintf("| %g |",x(i)); //%g for floating point number
    for j=1:i
        mprintf("| %g |",y(i,j));
    end
    mprintf("\n");
end

yg=y(n);
u1=1;
for j=1:n-1
    u1=u1*(u+j-1)/j;
    yg=yg+u1*y(n,1+j);   
end

disp("Value of y at x = "+string(xg)+" is "+string(yg));



