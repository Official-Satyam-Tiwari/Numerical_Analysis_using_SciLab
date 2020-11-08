//SATYAM TIWARI (1930205)
//AIM : ROOTS OF QUADRATIC EQUATION USING QUADRATIC FORMULA

a = input("Enter x^2 coeffecient =");
b = input("Enter x coeffecient = ");
c = input("Enter constant term = ");

d = (b*b) - (4*a*c);

rt1 = (-b+sqrt(d))/(2*a);
rt2 = (-b-sqrt(d))/(2*a);

disp(["1st Root = "+string(rt1);"2nd Root = "+string(rt2)]);

//OUTPUT :-
//Enter x^2 coeffecient =10
//Enter x coeffecient = 5
//Enter constant term = 8
//  "1st Root = -0.25+%i*0.8587782"
//  "2nd Root = -0.25-%i*0.8587782"
