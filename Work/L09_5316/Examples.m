close all
clear all

x = [0 1 2 3 4 5 6  zeros(1, 1000)];
S = fft(x);

% Plot the modulus and phase of the Fourier coefficients
S_mod = abs(S)
S_phase = angle(S)
stem(S_mod)
figure
stem(S_phase)

figure
plot(fftshift(S_mod))
figure
plot(fftshift(S_phase))





figure                % Make new figure window
subplot(2, 1, 1)      % Split in 2 rows, 1 column. We are now in part 1 of the split
plot(S_mod)                % Plot is displayed in the first part
subplot(2, 1, 2)      % Use same split in 2 rows, 1 column. But we move now to part 2 of the split
plot(S_phase)  