//  Generating and Plotting the Legendre's Polynomial

clear;clc;

function y=p(n,x)  //n : order of polynomial
    s = 0;
    for m=0:n/2
        den=factorial(m)*factorial(n-m)*(2^n)*factorial(n-2*m);
        s = s + ((-1)^m)*factorial(2*n-2*m)*(x.^(n-2*m))/den;
    end
    y=s;
endfunction

n=int(input("Enter the order of polynomial : n = "));
x=input("Enter the value of x : x = ");
pl=p(n,x)
disp("P_n(x) = "+string(pl));

//  Plotting all Legendre's polynomial in one gf (graphic figure)
x=-1:0.01:1;
ax=gca();   // Get Current Axis
ax.font_size=3;
ax.x_label.font_size=2;
ax.y_label.font_size=2;
ax.title.font_size=4;
clf(1);
scf(1);
for n=0:5   //  Plotting P_0(x),P_1(x),P_2(x),P_3(x),P_4(x),P_5(x)
    plot2d(x,p(n,x),n+1);
    xtitle("Legendres Polynomoials","x","P_n(x)");
    legend("P_0(x)","P_1(x)","P_2(x)","P_3(x)","P_4(x)","P_5(x)");
    xgrid;
end

//  Plotting subplots of Legendre's polynomial in one gf (graphic figure)
clf(0);
scf(0);
for n=0:5   //  Plotting P_0(x),P_1(x),P_2(x),P_3(x),P_4(x),P_5(x)
    subplot(2,3,n+1);
    plot2d(x,p(n,x),n+1);
    xtitle(" Leg Polynomials ","x","P_n(x)");
    xgrid;
end


