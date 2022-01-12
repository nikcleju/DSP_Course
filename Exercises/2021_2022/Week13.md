---
title: Exercises Week 13
subtitle: DSP
documentclass: scrartcl
fontsize: 12pt
--- 

1. Design two filters of order 2 of the following types, and write their equation:
    - a low-pass filter
    - a band-pass filter with central frequency around the frequency $\omega = \frac{3\pi}{4}$
    
2. Which of the following filters has a linear-phase?
    a. $H(z) = 7 + 3 z^{-1} + z^{-2} + 7z^{-3} + 3 z^{-4} + z^{-5}$
    a. $H(z) = \frac{1 + 2 z^{-1} + z^{-2}}{1 - 2 z^{-1} + z^{-2}}$
    a. $H(z) = 1 + 2z^{-1} + z^{-2}$
    a. $H(z) = 1 - 2z^{-1} + z^{-2}$
    a. $H(z) = 1 - 2z^{-1} - 2z^{-2} + z^{-3}$
    a. $H(z) = 1 + 2z^{-1} + 7z^{-2}- 2z^{-2} - z^{-3}$
    a. $H(z) = 1 - z^{-1}$
    a. $H(z) = 1 - z^{-2}$

3. Consider the causal system with the following equation:
$$y[n] - 0.7y[n-1] + 0.2 y[n-2] = 2 x[n] - x[n-2]$$
    a. Draw the pole-zero diagram and indicate the Region Of Convergence
    b. Find the system function H(z) and characterize the system with respect to:
        - stability
	    - length of impulse response
	    - implementation (recursive or not)
    c. Find the impulse response
    d. Find the output signal $y[n]$ if the input signal is the unit step

4. Draw the implementation structure of one of the filters of exercise 1 in the form:
    
	Direct-Form I / Direct-Form II / Direct-Form I Transposed / Direct-Form II Transposed