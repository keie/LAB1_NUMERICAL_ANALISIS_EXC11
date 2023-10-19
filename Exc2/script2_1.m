
% function
f = x^3 + 2*x^2 + 10*x - 20;



%tolerance
tolerance = 10^-4;

x0 = 1.5;

max_iter = 100;

[result,iterations] = newton_method(f,tolerance,x0,max_iter);
disp("root :"+result)
disp("iterations :"+iterations)