function [df] = derivate(f)
    syms x; %symbolic var
    df = diff(f,x);
end
    