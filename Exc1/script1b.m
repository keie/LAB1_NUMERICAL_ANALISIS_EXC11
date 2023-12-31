% function
syms x;
f = log(x+1)-2;
%tolerance
tolerance = 10^-6;
x0 = 0.5;
x1 = 2;
max_iter = 20;
[result,iterations] = secant_method(f,tolerance,x0,x1,max_iter);

disp("method used secant method")
disp("root :"+result)
disp("iterations :"+iterations)