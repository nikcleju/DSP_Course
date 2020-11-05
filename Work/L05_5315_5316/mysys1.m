function y = mysys1(x)

N = length(x);

y(1) = 1/4*x(1);
y(2) = 1/4*x(2) - 1/2*x(1);
for n = 3:N
    y(n) = 1/4*x(n) - 1/2*x(n-1) + 1/4*x(n-2);
    %y(n) = 1*x(n) - 2*x(n-1) + 1*x(n-2);
    %y(n) = 1*x(n) - 1*x(n-1);
end

