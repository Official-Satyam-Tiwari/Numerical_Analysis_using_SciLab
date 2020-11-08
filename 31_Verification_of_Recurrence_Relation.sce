// Verification of recurrence formula
// (n+1)P_(n+1)(x)=(2n+1)xP_n(x)-nP_(n-1)(x)

clear;clc;
function y=p(n,x)  //n : order of polynomial
    s = 0;
    for m=0:n/2
        den=factorial(m)*factorial(n-m)*(2^n)*factorial(n-2*m);
        s = s + ((-1)^m)*factorial(2*n-2*m)*(x.^(n-2*m))/den;
    end
    y=s;
endfunction

disp("Given Recurrence Relation : ");
disp("(n+1)P_(n+1)(x)=(2n+1)xP_n(x)-nP_(n-1)(x)");
printf("\n");
n=int(input("Enter the order of polynomial : n = "));
x=input("Enter the value of x : x = ");
lhs = (n+1)*p(n+1,x);
rhs = (2*n+1)*x*p(n,x)-n*p(n-1,x);

disp("LHS = "+string(lhs));
disp("RHS = "+string(rhs));
if lhs==rhs then
    disp("Recurrence Relation Verified");
else
    disp("Recurrence Relation Not Verified");
end
