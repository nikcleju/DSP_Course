clear all
close all

% Load an echo sound
[h, Fs1] = audioread('Scala Milan Opera Hall.wav');
%[h, Fs1] = audioread('Bottle Hall.wav');
h = h(:,1);

% Load a melody
[date, Fs] = audioread('Kalimba.mp3', [1 441000]);
date = date(:,1);

% Apply the echo
y = conv(date, h);

% Let's hear
%sound(date, Fs)
%sound(y/10, Fs)

% Continue with Ex3
% Load another echo
[h2, Fs2] = audioread('Five Columns.wav');
h2 = h2(:,1);

% Apply second echo after the first
y2 = conv(y, h2);

% Let's hear
%sound(y2 / 50, Fs)

% Equivalent impulse response = convolution of the two echos
heq = conv(h, h2);
plot(heq)