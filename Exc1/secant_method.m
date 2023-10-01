function [result, iterations] = secant_method(f, tolerance, x0, x1, max_iter)
    % f: function to which the secant method will be applied
    % tolerance: tolerance for convergence
    % x0: first initial point
    % x1: second initial point
    % max_iter: maximum number of iterations
    
    syms x;  % Declare x as a symbolic variable
    
    % Get the derivative of the function
    df = diff(f, x);
    
    iterations = 0;
    
    while iterations < max_iter
        
        % Calculate the next value of xk using the secant method
        xk = x1 - double(subs(f, x1) * (x1 - x0) / (subs(f, x1) - subs(f, x0)));
       
        % Check for convergence
        if abs(xk - x1) < tolerance
            result = xk;
            return;
        end
        
        % Update values for the next iteration
        x0 = x1;
        x1 = xk;
        
        iterations = iterations + 1;
        
    end
    
    % If convergence is not reached after the maximum iterations
    error('The secant method does not converge after %d iterations', max_iter);
end