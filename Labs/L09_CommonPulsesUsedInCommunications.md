---
title: Common Pulses Used in Communications
subtitle: Lab 9, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

The students shall know show of the pulses used in communications
and be capable of analyzing their spectrum.

# Theoretical aspects

Square pulses are rarely used in communication due to their high frequency content.
The Fourier series coefficients of a discrete periodical
signal can be computed from one period of the signal with:

# Exercises

1. Generate a 100 samples long **rectangular** signal `x` defined as 
$x[n] = [\underbrace{1,1, ...1}_{50}, \underbrace{0,0, ...0}_{50}]$.
    a. Plot the signal in the top half of a figure (use `subplot()`).
    b. Compute the Fourier series coefficients with `fft()` and 
    plot their magnitude in the lower half of the figure. Use the code from the last laboratory to compute the spectrum:

```
% Given a signal x with length N

% Compute the Fourier series coefficients and find their magnitudes and phases
c = fft(x);
m = abs(c);
phase = angle(c);

% Find the amplitudes of sinusoidal components
m = m(1:(N/2+1)); 
m(2:N) = 2*m(2:N);

% Frequencies' values = multiples of fundamental 1/N
f = (0:(N/2))*1/N;
```
2. Reconstruct and plot the signal `x` by summing all the sinusoidal components back again.
    * Each component is a cosine with amplitude `m(i)`, frequency `f(i)` and phase `phase(i)`.
    * The DC component of the signal is just like a sinusoidal component with frequency 0 (i.e. constant signal)
    * Full formula is:
$$x[n] = \sum_i m(i) \cos(2 \pi f(i) + phase(i))$$
    
3. Reconstruct and plot the signal `x` as in previous exercise, but keeping only some of the sinusoidal components.
Display a figure composed of 5 subfigures, where the signal contains only:
    a. The first 2 components (DC + fundamental)
    a. The first 5 components
    a. The first 10 components
    a. The first 20 components
    a. All the components

4. Repeat exercises 1 and 3 using a 100-long Gaussian pulse (*Hint*: checl Matlab function `gausswin()`.
How is the spectrum of the Gaussian pulse compared to a rectangular pulse? Why?

5. Open Matlab's Window Designer tool (`windowDesigner`). Visualize the time-domain and frequency-domain
domain aspect of the following window types:
    * rectangular
    * raised cosine
    * gaussian
    * Kaiser
    * Hann
    

# Final questions


1. TBD
