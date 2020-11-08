//Given acceleration with equidistant time data. Calculate the position and velocity & plot them

clear; clc;

n=int(input("Enter the no. of data points :"));

for i=1:n
    t(i)=input("Enter the value of time (in sec) : t"+string(i)+" = ");
    a(i)=input("Enter the value of acceleration (in m/s^2) : a"+string(i)+" = ");
end

disp("time(s) vs acceleration(m/s^2) data : ")
disp([t,a]);

dt=t(2)-t(1); //as time is equidistant

v(1)=0; //let initial velocity be 0 m/s
x(1)=0; //let initial position be 0 m

for i=1:n-1
    v(i+1)=v(i)+dt*a(i);
    x(i+1)=x(i)+dt*v(i);
end

disp("time(sec) vs acceleration(m/s^2) vs velocity(m/s) vs position(m)");
disp([t,a,v,x]);

clf;

subplot(3,1,1);
plot(t,a,"r-","linewidth",2);
xtitle("time(s) vs acceleration(m/s^2) graph","time(s)","acceleration(m/s^2)");
xgrid;

subplot(3,1,2);
plot(t,v,"b-","linewidth",2);
xtitle("time(s) vs velocity(m/s) graph","time(s)","velocity(m/s)");
xgrid;

subplot(3,1,3);
plot(t,x,"g-","linewidth",2);
xtitle("time(s) vs position(m) graph","time(s)","position(m)");
xgrid;
