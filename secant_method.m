function [result,iterations] = secant_method(f,tolerance,x0,x1,max_iter)
    syms x;
    % f function
    % x0 first point
    
    % x1 second point
    
    % getting the function derivate 
    df = derivate(f)
    
    iterations = 0;
    
    x = x0
    
    x1 = x1
    
    while iterations < max_iter
        xk = x - double( (subs(f)*(x-x1)) / (subs(x) - subs(x1)))
        
        %convergency verification
        if abs(xk - x) < tolerance
            
            result = xk
            return;
        end
        
        x = xk
        
        iterations = iterations + 1
    end
    
    % if it does not work 
    error('the secant method does not conver after %d iterations',max_iter)