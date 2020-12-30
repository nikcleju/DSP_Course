% Exercise 1

clear all
close all

f1 = 0.05;
f2 = 0.1;

n = 0:99;
frequencies = n/length(n);

x = 0.7*cos(2*pi*f1*n) + 1.2*sin(2*pi*f2*n);
%S = fft(x);
S = fft(x, 10000);  % c).
Smod = abs(S);
Sphase = angle(S);

subplot( 3, 1, 1);
plot(x)
subplot( 3, 1, 2);
stem(Smod)
%stem(frequencies, Smod)
subplot( 3, 1, 3);
stem(Sphase)
%stem(frequencies, Sphase)
