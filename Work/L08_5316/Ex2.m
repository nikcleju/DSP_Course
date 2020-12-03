clear all
close all

% Load echo
%[h, Fs1] = audioread('Scala Milan Opera Hall.wav');
[h, Fs1] = audioread('Large Long Echo Hall.wav');
h = h(:,1);

% Load audio signal
[date, Fs] = audioread('Kalimba.mp3', [1   441000]);
date = date(:,1);

% Convolve
y = conv(h, date);

% Load another echo
[h2, Fs2] = audioread('Vocal Duo.wav');
h2 = h2(:,1);

% Convolve again with the second echo
y2 = conv(h2, y);

% Hear the echo
%sound(y2 / 100, Fs)

heq = conv(h, h2);
plot(heq);