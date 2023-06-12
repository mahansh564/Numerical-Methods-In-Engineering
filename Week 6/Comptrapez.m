function I = Comptrapez(FunName, a, b)
%COMPTRAPEZ Summary of this function goes here
%   Detailed explanation goes here
    err = 10;
    n = 2;
    I = 0;
    while err > 0.01
        h = (b - a)/n;
        x = a:h:b;
        new_I = 0;
        for m = 1:n
            new_I = new_I + (h/2)*(FunName(x(m))+ FunName(x(m+1)));  
        end
        err = new_I - I;
        I = new_I;
        n = n*2;
    end
end