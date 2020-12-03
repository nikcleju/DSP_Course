x = [0 1 2 3 4 5 6];
S = fft(x);
x2 = ifft(S);

Smod   = abs(S);
Sphase = angle(S);

% Plot the modulus and phase of the Fourier coefficients
stem(Smod)
figure
stem(Sphase)

figure
plot(fftshift(Smod))
figure
plot(fftshift(Sphase))


figure                % Make new figure window
subplot(2, 1, 1)      % Split in 2 rows, 1 column. We are now in part 1 of the split
plot(Smod)                % Plot is displayed in the first part
subplot(2, 1, 2)      % Use same split in 2 rows, 1 column. But we move now to part 2 of the split
plot(Sphase)                % Plot is displayed in the second part