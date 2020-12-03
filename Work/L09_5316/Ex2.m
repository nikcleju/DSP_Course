clear all
close all

%x = 7*ones(1,100);   % a).
%x = [5 zeros(1,99)];  % b).
%load('ECG_Signal.mat')  % c).
%x = val;
%x = randn(1,1000);     % d).
[x, Fs] = audioread('Kalimba.mp3', [1e6 1e6+10000]);
x = x(:,1);

S = fft(x);
Smod = abs(S);
Sphase = angle(S);

n=0:(length(x)-1);
frequencies = n/length(n);

subplot(3,1,1)
plot(x)
subplot(3,1,2)
plot(frequencies, Smod)
subplot(3,1,3)
plot(frequencies, Sphase)
