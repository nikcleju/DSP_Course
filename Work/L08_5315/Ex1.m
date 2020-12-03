clear all
close all

% Load some audio data
%[date, Fs] = audioread('FireOrchestra.m4a', [1 441000]);
[date, Fs] = audioread('Kalimba.mp3', [1 441000]);

% Keep only one channel (in order to be a vector)
date = date(:,1);

% Convolution
y = conv(date, [1/6  1/6  1/6  1/6  1/6  1/6]);

% Listen
%sound(date, Fs);
sound(y, Fs);