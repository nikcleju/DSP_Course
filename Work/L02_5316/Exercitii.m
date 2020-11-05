
% Exercise 3
[date, Fs] = audioread('Kalimba.mp3', [1   441000]);
sound(date, Fs);

% 3.4 Swap channels
xswapped = [date(:,2) x(:,1)];   % second column, first column
sound(xswapped, Fs);

% 3.5 fade-in and fade-out
amplif = [ linspace(0, 1, 3*Fs)     ones(1, 4*Fs)       linspace(1, 0, 3*Fs) ];
plot(amplif);

% Take a single channel
d1 = date(:,1);

% Multiply sound signal with amplif vector => fade-in and fade-out
sound(d1 .* amplif', Fs);
