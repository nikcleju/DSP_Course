clear all
close all

% Generate signal
f1 = 0.05;
f2 = 0.1;
n = 0:99;
%x = 0.7 * cos(2*pi*f1*n) + 1.2 * sin(2*pi*f2*n);
%x = 7*ones(1,100);
x = [5, zeros(1,99)];

% Compute FFT
S = fft(x);
%S = fft(x, 1000);  % c).
Smod    = abs(S);
Sphase  = angle(S);

% Nice plot with subfigures
figure
subplot(3,1,1);
stem(x)
subplot(3,1,2);
stem(Smod)
subplot(3,1,3);
plot(Sphase)






