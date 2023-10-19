
% function
f = tanh(x);
%tolerance
tolerance = 10^-4;
x0 = -0.80;
max_iter = 20;
[result,iterations] = newton_method(f,tolerance,x0,max_iter);
disp("method : Newton Method")
disp("root :"+result)
disp("iterations :"+iterations)

%Newton's method is generally adequate for finding roots of equations, 
%but the hyperbolic tangent function (tanh(x)) is a function that has no real roots. 
%The hyperbolic tangent ranges from -1 to 1, so there is no value of x for which tanh(x) equals zero. 
%This means that Newton's method cannot find a real root for this function, 
%which is why you may be experiencing problems.

%the solution is take another initial point instead of -5, use [-1,1] value