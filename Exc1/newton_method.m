function [result,iterations] = newton_method(f,tolerance,x0,max_iter)
    syms x;
    % f function
    % x0 initial point
    % getting the function derivate 
    df = derivate(f)
    iterations = 0;
    disp(x0)
    x = x0
    while iterations < max_iter
        disp(x)
        disp(subs(df))
        disp(subs(f))
        xk = x - (double(subs(f) / subs(df)) )
        %convergency verification
        if abs(xk - x) < tolerance
            result = xk
            return;
        end
        x = xk
        iterations = iterations + 1
    end
    % if it does not work 
    error('the newthon method does not conver after %d iterations',max_iter)