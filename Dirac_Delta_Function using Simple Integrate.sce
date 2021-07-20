//DIRAC DELTA FUNCTION (using simple Integrate built-in function)
//Evaluating the function : "1/sqrt(2*%pi*sig^2) exp(-((x-2)^2)/(2*sig^2))*(x+3)" for various values of sigma

clc;clear;

sig=input("Enter Sigma:");  //Input Value of Sigma
n=[0.1:.1:4]; 

for i=1:length(n)
    m=n(i);
    X(i)=integrate("(1/sqrt(2*%pi*sig^2))*(exp(-((x-2)^2)/(2*sig^2)))*(x+3)","x",-m,m);
end

printf("The integration at different limits for sigma = %f is",sig);
D=[-n' , n' , X];
disp(D)
plot(n,X',"-b");

//OUTPUT
//
//Enter Sigma:0.01
//
//The integration at different limits for sigma = 0.010000 is
//  -0.1   0.1   0.       
//  -0.2   0.2   0.       
//  -0.3   0.3   0.       
//  -0.4   0.4   0.       
//  -0.5   0.5   0.       
//  -0.6   0.6   0.       
//  -0.7   0.7   0.       
//  -0.8   0.8   0.       
//  -0.9   0.9   0.       
//  -1.    1.    0.       
//  -1.1   1.1   0.       
//  -1.2   1.2   0.       
//  -1.3   1.3   0.       
//  -1.4   1.4   0.       
//  -1.5   1.5   0.       
//  -1.6   1.6   0.       
//  -1.7   1.7   9.97D-201
//  -1.8   1.8   1.040D-90
//  -1.9   1.9   6.209D-24
//  -2.    2.    2.4960106
//  -2.1   2.1   5.       
//  -2.2   2.2   5.       
//  -2.3   2.3   5.       
//  -2.4   2.4   5.       
//  -2.5   2.5   5.       
//  -2.6   2.6   5.       
//  -2.7   2.7   5.       
//  -2.8   2.8   5.       
//  -2.9   2.9   5.       
//  -3.    3.    5.       
//  -3.1   3.1   5.       
//  -3.2   3.2   5.       
//  -3.3   3.3   1.070D-22
//  -3.4   3.4   5.       
//  -3.5   3.5   5.       
//  -3.6   3.6   5.       
//  -3.7   3.7   3.900D-33
//  -3.8   3.8   1.071D-20
//  -3.9   3.9   5.       
//  -4.    4.    5.       
