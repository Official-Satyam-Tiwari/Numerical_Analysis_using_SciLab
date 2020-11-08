//SATYAM TIWARI (1930205)
//AIM : FACTORIAL FUNCTION

y = 1;

function y = f(n)
    for i=1:n
      y=y*i;
    end
endfunction

n = input("Enter any number =");

disp(f(n));

//OUTPUT : Enter any number =5
//   120.
