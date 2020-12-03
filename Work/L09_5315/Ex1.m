clear all
close all

% Exercise 1 & 2

f1 = 0.05;
f2 = 0.17;

n = 0:99;

%x = 0.7*cos(2*pi*f1*n) + 1.2*sin(2*pi*f2*n); % Ex 1
%x = 9*ones(1,100);  % Ex 2, a)
%x = [5, zeros(1,99)];  % Ex 2, b)
%load('ECG_Signal.mat');  % c)
%x = val;
x = randn(1,1000);

%S = fft(x, 10000);
S = fft(x);
Smod   = abs(S);
Sphase = angle(S);

N = length(S);
frequencies = (0:(N-1)) / N;

subplot(3, 1, 1);
plot(x)
subplot(3, 1, 2);
plot(frequencies, Smod)
subplot(3, 1, 3);
plot(frequencies, Sphase)
