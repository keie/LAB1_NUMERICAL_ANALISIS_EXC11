% function
f = x^3 + 2*x^2 + 10*x - 20;
%tolerance
tolerance = 10^-4;
x0 = 1;
max_iter = 30;

[result,iterations] = newton_method(f,tolerance,x0,max_iter);
disp("method: Newton Method")
disp("root :"+result)
disp("iterations :"+iterations)