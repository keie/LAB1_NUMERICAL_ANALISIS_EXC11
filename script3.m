% function
f = x^3 - 1/2;

%tolerance
tolerance = 10^-10;

x0 = 0.1;

x1 = 1

max_iter = 50;

[result,iterations] = bisection_method(f,tolerance,x0,x1,max_iter);