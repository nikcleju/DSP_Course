
x = [zeros(1,20)  ones(1,20)];
x = [x x x x x];   % nice

y = mysys1(x);

plot( [x' y'] )
legend('Input signal x[n]', 'Output signal y[n]');