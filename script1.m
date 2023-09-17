
% function
f = x^2 -10;



%tolerance
tolerance = 10^-6;

x0 = 2;

max_iter = 10;

[result,iterations] = newton_method(f,tolerance,x0,max_iter);



