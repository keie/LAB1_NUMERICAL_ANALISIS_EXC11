% function
f =tanh(x);

%tolerance
tolerance = 10^-10;

x0 = 5;

x1 = 10;

max_iter = 100;

[result,iterations] = bisection_method(f,tolerance,x0,x1,max_iter);

disp("root :"+result)
disp("iterations :"+iterations)

%the ranfge [5,10] is out of the root range of the tanh(x) , we have to
%choose a value between -1 and 1 because the root is in 0