clear all
close all

[date, Fs] = audioread('Kalimba.mp3', [1 441000]);
%sound(date, 1.5*Fs);

% 3.3
date2 = 2*date;
%sound(date2, Fs);

% 3.4
tmp = date(:,1);
date(:,1) = date(:,2);
date(:,2) = tmp;
% Or:
% xswapped = [ x(:,2)  x(:,1) ];
%%[primalinie ; adoualinie]
%%[  [1 2 3 4] ; [5 6 7 8]  ]
%sound(date, Fs);

% 3.5
first  = linspace(0, 1, 3*Fs);   % 3*Fs = 3 seconds = 3/10* 10 seconds
second = ones(1, 4*Fs);
third  = linspace(1, 0, 3*Fs);
amplif = [first  second  third];
plot(amplif);

x = date(:,1);
xwithfade = x .* amplif';
sound(xwithfade, Fs);


