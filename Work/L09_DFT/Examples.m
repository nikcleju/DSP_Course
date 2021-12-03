close all
clear all

x = [0 1 2 3 4 5 6 7];
S  = fft(x);
x2 = ifft(S);

% Plot the modulus and phase of the Fourier coefficients
S_mod   = abs(S)
S_phase = angle(S)
stem(S_mod)
figure
stem(S_phase)

% Plot like in the lectures
figure
stem(fftshift(S_mod))
figure
stem(fftshift(S_phase))


% Subplot
figure              % Make new figure window

subplot(2, 2, 1)    % Split in 2 rows, 1 column. We are now in part 1 of the split
stem(S_mod)         % Plot is displayed in the first part

subplot(2, 2, 2)    % Use same split in 2 rows, 1 column. But we move now to part 2 of the split2
stem(S_phase)       % Plot is displayed in the second part

subplot(2, 2, 3)    % Split in 2 rows, 1 column. We are now in part 1 of the split
stem(fftshift(S_mod))        % Plot is displayed in the first part

subplot(2, 2, 4)    % Use same split in 2 rows, 1 column. But we move now to part 2 of the split2
stem(fftshift(S_phase))       % Plot is displayed in the second part

