// GAUSS-SEIDAL METHOD
// Efficient & easy w.r.t. Gauss-Elimination method

clear;clc;

A = input("Enter a (Diagonally Dominant) Coefficient Matrix : A = ");
B = input("Enter Source Vector : B = ");
n = int(input("Enter the number of iterations : n = "));
e = input("Enter the tolerance value : e = ");

N = length(B); // number of equations or variables
P = [0; 0; 0]; // initial guess vector
X = zeros(N,1); // solution matrix
Y = zeros(N,1); // for stopping criteria

for j=1:n       // for number of iterations
    for i=1:N   // for each equation or unknown variable
       num = B(i) - A(i,[(1:i-1),(i+1:N)])*P([(1:i-1),(i+1:N)],1); 
       X(i) = (num)/A(i,i);
       P(i) = X(i);
    end
    disp("Iteration No. : "+string(j));
    disp(X);        // display solution matrix
    if(abs(Y-X)<e) then // using stopping criteria 
        disp("Answer Reached : (Loop Break)");
        break;
    end
    Y=X;
end
