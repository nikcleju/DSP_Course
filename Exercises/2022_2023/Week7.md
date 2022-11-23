---
title: Exercises Week 7
subtitle: DSP
documentclass: scrartcl
fontsize: 12pt
---

Left-over from last week:

1. A causal LTI system has the property that if the input signal is 
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

1. Find the DTFT of the signal $\{1, 1, 1, 0, 0, ...\}$, considering it is surrounded with infinitely-long zeros on both sides

   - write the expression of $|X(\omega)|$  and $\angle{X(\omega)}$
   - what is the signal's spectrum (modulus and phase) at frequency $f=\frac{1}{2}$?
