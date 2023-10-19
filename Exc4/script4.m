g = @(x) 20 ./ (x.^2 + 2*x + 10);
a = 1;
b = 2;
syms x;
dg = diff(g(x), x);
max_derivative = max(abs(double(subs(dg, x, [a, b]))));

tolerance = 10^-2; 
max_iterations = 100; 
x0 = 1.7;  
    theoretical_tolerance = (1 - max_derivative) / max_derivative * 10^(-2);
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
    
  












