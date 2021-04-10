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
