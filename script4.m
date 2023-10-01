% Function g(x)
g = @(x) 20 ./ (x.^2 + 2*x + 10);

% Interval [1, 2]
a = 1;
b = 2;

% Verify the applicability of the Contraction Mapping Theorem
% Calculate the maximum derivative of g(x) in [1, 2]
syms x;
dg = diff(g(x), x);
max_derivative = max(abs(double(subs(dg, x, [a, b]))));

% Check if max_derivative < 1 to apply the theorem
if max_derivative >= 1
    error('The Contraction Mapping Theorem is not applicable in the interval [1, 2].');
end

% Simple iteration method (fixed-point)
tolerance = 1e-8;  % Desired tolerance for precision
max_iterations = 100;  % Maximum number of allowed iterations

x0 = 1.5;  % Initial value within the interval [1, 2]

for decimals = [2, 4, 6, 8]
    % Stopping criterion based on tolerance and max_derivative
    theoretical_tolerance = (1 - max_derivative) / max_derivative * 10^(-decimals);
    
    x = x0;
    iterations = 0;
    
    while iterations < max_iterations
        x_new = g(x);  % Iterate g(x)
        if abs(x_new - x) <= theoretical_tolerance
            break;  % Meet the theoretical criterion
        end
        x = x_new;
        iterations = iterations + 1;
    end
    
    % Show results
    fprintf('Decimals: %d\n', decimals);
    fprintf('Estimated result: %.8f\n', x);
    fprintf('Iterations performed: %d\n\n', iterations);
end



%Theoretical criteria in numerical methods are typically designed 
%to ensure convergence and provide a worst-case scenario guarantee. 
%In this case, the theoretical criterion for stopping the iteration 
%is based on the maximum derivative of 
%and the desired number of decimal places.
%The theoretical criterion is pessimistic in the sense that it sets a very conservative threshold 
%for convergence to ensure that the method converges in all cases. As a result, 
%it may require more iterations than necessary to achieve the desired level of precision. 
%In practice, you may often find that the method converges much faster than 
%what the theoretical criterion suggests.
%In summary, while the theoretical criterion provides a safety net to guarantee convergence,
%it can be overly conservative, and the actual number of iterations required to achieve 
%the desired precision may be fewer in many practical scenarios.
