x = [0.76, 6.66, 9.44, 16.8];
y = [3.74, 4.90, 9.97, 9.62];
cubic_spline = spline(x,y);
coefs = cubic_spline.coefs;

xi = 7; 

%location spline
loc = 1;
for i = 2:length(x)
    if x(i) > xi
        break;
    end
    loc = i;
end

x_prime = xi - x(loc);
first_derivative = 3*coefs(loc, 1)*x_prime^2 + 2*coefs(loc, 2)*x_prime + coefs(loc, 3);
second_derivative = 6*coefs(loc, 1)*x_prime + 2*coefs(loc, 2);

disp(first_derivative)
disp(second_derivative)

scatter(x, y, 'k', 'filled');
hold on; 
for i = 1:length(x)-1 
    X = x(i):0.01:x(i+1); 
    Y = spl.coefs(i, 1)*(X - x(i)).^3 + spl.coefs(i, 2)*(X - x(i)).^2 + spl.coefs(i, 3)*(X - x(i)) + spl.coefs(i, 4); 
    plot(X, Y, 'b'); 
end