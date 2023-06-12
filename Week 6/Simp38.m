function I = Simp38(FunName, a, b)
%COMPTRAPEZ Summary of this function goes here
%   Detailed explanation goes here
    err = 10;
    n = 3;
    I = 0;  
    while err > 0.01
        h = (b - a)/n;
        x = a:h:b;
        new_I = 0;
        for m = 1:n
            even_sum = 0;
            for i=2:3:n-1
                current_x = x(i);
                next_x = x(i+1);
                even_sum = even_sum + 3*FunName(current_x) + 3*FunName(next_x);
            end

            odd_sum = 0;
            for i=4:3:n-2
                current_x = x(i);
                odd_sum = odd_sum + 2*FunName(current_x);
            end

            new_I = ((3*h)/8)*(FunName(a) + even_sum + odd_sum + FunName(b)); 
        end
        err = new_I - I;
        I = new_I;
        n = n*2;
    end
end