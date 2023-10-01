% function
f =exp(x) - 3;

%tolerance
tolerance = 10^-10;

x0 = 0.1;

x1 = 2;

max_iter = 100;

[result,iterations] = bisection_method(f,tolerance,x0,x1,max_iter);

disp("root :"+result)
disp("iterations :"+iterations)