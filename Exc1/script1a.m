syms x;
% function
f = exp(x)-3;
%tolerance
tolerance = 10^-6;
x0 = 2;
max_iter = 10;
[result,iterations] = newton_method(f,tolerance,x0,max_iter);

disp("method used newton method")
disp("root :"+result)
disp("iterations :"+iterations)



