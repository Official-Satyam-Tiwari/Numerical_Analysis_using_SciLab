//SATYAM TIWARI (1930205)

clf;

subplot(221);
plot2d();

subplot(222);
plot3d();

subplot(2,2,3)
param3d();

subplot(2,2,4)
bar3d;

x=[0:0.1:2*%pi];
y=sin(x);
scf(2);
plot2d(x,y,0,leg="sin(x)");

x=[1:10];
n=[8,6,13,10,6,4,16,7,8,5];
scf(3); 
bar(x,n);

X=[1,2,5];
n1=[5,10,5];
n2=[6,8,7];
scf(4);
bar(X,[n1',n2']);

//elliptical paraboloid
function z=f(x,y)
z=2*x^2+y^2;
endfunction
x=linspace(-1,1,100);
y=linspace(-2,2,200);
z=feval(x,y,f)';
scf(5);
surf(x,y,z)

//PARAM3D
t=linspace(0,4*%pi,100);
scf(6);
param3d(cos(t),sin(t),t)
