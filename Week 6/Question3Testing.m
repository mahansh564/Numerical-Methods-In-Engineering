z = [0 1 2 3 4 5 6 7 8 9 10 11 12];
d = [0 2.6 3.2 4.8 5.6 6 6.2 6 5.6 4.8 3.3 2.6 0];
r = d./2;
r2 = r.^2;

% Question 1: Surface Area
a = polyfit(z, r, 5);
f = @(x) a(1)*x.^5 + a(2)*x.^4 + a(3)*x.^3 + a(4)*x.^2 + a(5)*x + a(6);
disp(2*pi*Comptrapez(f, z(1), z(13)));

% Question 1: Volume
a = polyfit(z, r2, 5);
f = @(x) a(1)*x.^5 + a(2)*x.^4 + a(3)*x.^3 + a(4)*x.^2 + a(5)*x + a(6);
disp(pi*Comptrapez(f, z(1), z(13)));

% Question 2
y = @(x) sqrt(1 - x^2);
a = -1;
b = 1;
disp(Comptrapez(y, a, b));