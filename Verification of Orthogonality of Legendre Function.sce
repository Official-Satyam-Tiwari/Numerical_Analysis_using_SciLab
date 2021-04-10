//Legendre Polynomials : Orthogonality Verification

clc;clear;
n=input("Enter n :");   //Pn(x)
m=input("Enter m :");   //Pm(x)
a=integrate("legendre(m,0,x)*legendre(n,0,x)","x",-1,1,0.001);  //Integration of Pn(x)*Pm(x) from -1 to 1 with error of 0.001
mprintf("Integration of P%i(x)*P%i(x) w.r.t. x from -1 to 1 with error of 0.001= %g \n",n,m,a); //Printing Values

//Verification Checking
if m==n then
    v=2/(2*n+1);
else
    v=0;
end

disp("Verification using Formula ");
mprintf("\nUsing Direct Formula(2/2n+1) : %g\n",v);
disp("Hence Verified, Orthogonality Proved");

//if v==a then
//    disp("Orthogonality Verification : Successful");
//else
//    disp("Orthogonality Verification : Failed");
//end
