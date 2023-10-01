% function
f = x^3 + 2*x^2 + 10*x - 20;



%tolerance
tolerance = 10^-4;

x0 = 1;

x1 = 2

max_iter = 10;

[result,iterations] = secant_method(f,tolerance,x0,x1,max_iter);
disp("root :"+result)
disp("iterations :"+iterations)