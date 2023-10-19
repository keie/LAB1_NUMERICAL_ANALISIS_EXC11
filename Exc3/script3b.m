% Define the function
g = @(x) tanh(x);
% Tolerance and max values of iter
tolerance = 1e-6;
x0 = -1;
x1 = 1;
max_iter = 100;
% call secant method
[result, iterations] = secant_method(g, tolerance, x0, x1, max_iter);
disp("Method : Secant method")
disp("Root: " + result);
disp("Iterations: " + iterations)

%In order to find the root of the function 
%g(x)=tanh(x), it's crucial to set the initial parameters 
%within the interval where the root exists, which is 
%Adjusting these initial values to be within this range 
%is essential for the secant method to converge successfully and find the desired root.
%By selecting suitable initial values, the secant method can effectively locate 
%the root within the specified tolerance and maximum iterations.