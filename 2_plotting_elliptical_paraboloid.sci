//PLOTTING A elliptic paraboloid

function z=f(x,y)
    z=2*x^2+y^2;
endfunction

x=linspace(-1,1,100);
y=linspace(-1,1,100);
z=feval(x,y,f)';

clf;
surf(x,y,z)
