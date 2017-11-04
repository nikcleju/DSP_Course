---
title: Discrete Fourier Transform
subtitle: Lab 8, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should understand the Discrete Fourier Transform, and be able
to use the FFT algorithm in Matlab for frequency analysis of data.

# Theoretical aspects

# Exercises

1. Generate the signal $x[n] = 0.5 \sin (2 \pi f_1 n) + 0.7 \sin (2 \pi f_1 n) + noise,$
where $f_1 = 0.1$, $f_2 = 0.15$, $n = \overline{1:10000}$ and `noise` is AWGN with variance $sigma^2 = 0.1$.
    a. Plot the signal, in the top half of a sigure (use `subplot()`).
    b. Display the magnitude spectrum of the signal $x[n]$ from 1, two-sided ($\omega$ going from $\omega = -\pi$ to  $\omega = \pi$),
    in the bottom half of the figure (use `subplot()`).

2. Write a script file to implement a live spectrum analyzer.
    a. Read 8192 samples from the system's audio input device (use `audiorecord()`)
    a. Plot the signal and its magnitude spectrum as in the previous exercise. Plot only the positive
    side of the magnitude spectrum ($\omega$ going from $\omega = 0$ to  $\omega = \pi$)
    plot only 
    a. Go back to a. and repeat forever (you can stop it with Ctrl-C)

3. Write a function `p = pitch(x)` which returns the dominant frequency in the input signal $x$ (the dominant 
frequency is the frequency for which the magnitude spectrum is maximum). Call the function from the iterations
in the previous exercise, and display the dominant frequency in Matlab command line (use `disp()`).


# Final questions


1. TBD
