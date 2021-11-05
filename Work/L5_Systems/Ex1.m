clear all
close all

x = repmat( [zeros(1,20), ones(1,20)] , 1, 5 );

y = mysys1(x);

plot(x)
hold on
plot(y)

