clc
clear var

% Simp's 1/3 method
y = @(x) sqrt(1 - x^2);
sub_intervals = 8;
step_size = 2/sub_intervals;
x = -1:step_size:1;

even_sum = 0;
for i=2:2:sub_intervals
    current_x = x(i);
    even_sum = even_sum + 4*y(current_x);
end

odd_sum = 0;
for i=3:2:sub_intervals-1
    current_x = x(i);
    odd_sum = odd_sum + 2*y(current_x);
end
final_integral = (step_size/3)*(y(-1) + even_sum + odd_sum + y(1));
disp(final_integral);

% Simp's 3/8 method
y = @(x) sqrt(1 - x^2);
sub_intervals = 9;
step_size = 2/sub_intervals;
x = -1:step_size:1;

even_sum = 0;
for i=2:3:sub_intervals-1
    current_x = x(i);
    next_x = x(i+1);
    even_sum = even_sum + 3*y(current_x) + 3*y(next_x);
end

odd_sum = 0;
for i=4:3:sub_intervals-2
    current_x = x(i);
    odd_sum = odd_sum + 2*y(current_x);
end

final_integral = ((3*step_size)/8)*(y(-1) + even_sum + odd_sum + y(1));
disp(final_integral);

% Gauss quadrature
c1 = 1;
c2 = 1;
x1 = 1/sqrt(3);
x2 = 1/sqrt(3);
final_integral = c1*y(x1) + c2*y(x2);
disp(final_integral);