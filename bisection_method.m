function [result,iterations] = bisection_method(f,tolerance,x0,x1,max_iter)
    syms x;
    % f function
    
    % x0 first point
    
    % x1 second point
    
    iterations = 0;
    
    while iterations < max_iter
        xk = (x0 + x1)/2
        
        %convergency verification
        
        if (subs(f,x,x0)*subs(f,x,xk) < 0 )
            x1 = xk
        end
            
        if (subs(f,x,x1)*subs(f,x,xk) < 0 )
            x0 = xk
        end
         c = double(subs(f,x,xk))  
        if (abs(double(subs(f,x,xk))) <= tolerance)
            result = xk
            return
        end
        
       
        iterations = iterations + 1
    end
    
    % if it does not work 
    error('the bisection method does not conver after %d iterations',max_iter)