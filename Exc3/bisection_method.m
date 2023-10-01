function [result, iterations] = bisection_method(f, tolerance, x0, x1, max_iter)
    syms x;
    
    iterations = 0;
    
    while iterations < max_iter
        xk = (x0 + x1) / 2;
        
        % Check if f(x0) or f(x1) are close to zero
        if abs(subs(f, x, x0)) <= tolerance
            result = x0;
            return;
        elseif abs(subs(f, x, x1)) <= tolerance
            result = x1;
            return;
        end
        
        % Check for convergence
        if abs(subs(f, x, xk)) <= tolerance
            result = xk;
            return;
        end
        
        % Update the interval
        if subs(f, x, x0) * subs(f, x, xk) < 0
            x1 = xk;
        elseif subs(f, x, x1) * subs(f, x, xk) < 0
            x0 = xk;
        else
            error('The bisection method cannot be applied.');
        end
        
        iterations = iterations + 1;
    end
    
    % If it does not converge after the maximum number of iterations
    error('The bisection method does not converge after %d iterations.', max_iter);
end
