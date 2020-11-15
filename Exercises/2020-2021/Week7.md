---
title: Exercises Week 7
subtitle: DSP
documentclass: scrartcl
fontsize: 12pt
---


1. Consider the system with the following difference equation:
$$y[n] = -0.1 y[n-1] + 0.2 y[n-2] + x[n] + x[n-1]$$

    a. Find the system function H(z), draw the pole-zero diagram, and specify if the system is stable
    b. Compute the impulse response $h[n]$ of the system
    c. Compute the response of the system to the unit step $x[n] = u[n]$
    d. Compute the response of the system to the input signal $x[n] = \left(\frac{1}{3}\right)^n u[n]$

2. A causal LTI system has the property that if the input signal is 
$$x[n] = \left( \frac{1}{3} \right)^n u[n] - \frac{1}{4} \left( \frac{1}{3} \right)^n u[n-1],$$
then the output signal is
$$y[n] = \left( \frac{1}{4} \right)^n u[n]$$

    a. Find the system function H(z), draw the pole-zero diagram
    b. Compute the impulse response $h[n]$ of the system
    c. Find the difference equation of the system
    d. Characterize the system with respect to:
        - length of impulse response (FIR or IIR)
        - implementation (recursive or non-recursive)
        - stability
