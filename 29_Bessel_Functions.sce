//  Generating and Plotting the Bessel Function

clear;clc;

function y=j(n,x)  //n : order of polynomial
    s = 0;
    for m=0:30 //"30" may vary according to values or plots
        den=factorial(m)*factorial(n+m);
        s = s + ((-1)^m)*((x/2).^(n+2*m))/den;
    end
    y=s;
endfunction

n=int(input("Enter the order of polynomial : n = "));
x=input("Enter the value of x : x = ");
pl=j(n,x)
disp("J_n(x) = "+string(pl));

//  Plotting all Bessel Functions in one plot in one gf (graphic figure)
x=0:0.01:15;
ax=gca();   // Get Current Axis
ax.font_size=5;
ax.x_label.font_size=5;
ax.y_label.font_size=5;
ax.title.font_size=7;
clf(1);
scf(1);
for n=0:5
    plot2d(x,j(n,x),n+1);
    xtitle("Bessel Functions","x","J_n(x)");
    legend("J_0(x)","J_1(x)","J_2(x)","J_3(x)","J_4(x)","J_5(x)");
    xgrid;
end

//  Plotting subplots of Bessel Functions in one gf (graphic figure)
clf(0);
scf(0);
for n=0:5
    subplot(2,3,n+1);
    plot2d(x,j(n,x),n+1);
    xtitle("Bessels Functions","x","J_n(x)");
    xgrid;
end


