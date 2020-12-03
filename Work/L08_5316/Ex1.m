
% Load data
[date, Fs] = audioread('Kalimba.mp3', [1   441000]);

% Keep only first column
date = date(:,1);

% Convolution
y = conv(date, [1/6  1/6  1/6  1/6  1/6  1/6] );

% Let's hear
%sound(date, Fs);
%sound(y, Fs);
