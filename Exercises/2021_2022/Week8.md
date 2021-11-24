---
title: Exercises Week 8
subtitle: DSP
documentclass: scrartcl
fontsize: 12pt
---

1. Compute the circular convolution of the two signals:
  $$x_1[n] = [1, 3, 1, 3]$$
  $$x_2[n] = [2, 2, 5, 5]$$

2. Compute the circular convolution in $N = 7$ points of the same two signals 
(i.e. append zeros to make length 7, then do circular convolution)

3. Consider a periodic signal $x[n]$ with period $N=6$ and the DFT coefficients:
    
   $X_k$ = [21.0000 + 0.0000i , -3.0000 + 5.1962i , -3.0000 + 1.7321i , -3.0000 + 0.0000i , -3.0000 - 1.7321i , -3.0000 - 5.1962i]
  
   Write $x[n]$ as a sum of sinusoids.


4. Consider a periodic signal $x[n]$ with period $N=5$ and the DFT coefficients:
    
   $X_k$ = [15.0000 + 0.0000i , -2.5000 + 3.4410i , -2.5000 + 0.8123i , -2.5000 - 0.8123i , -2.5000 - 3.4410i]
  
   Write $x[n]$ as a sum of sinusoids.
    
5. Find the DFT coefficients of the periodic signal with period $\{1, 1, 0, 0\}$,
and write the signal as a sum of sinusoidal components.

6. Find the DTFT of the signal $\{1, 1, 0, 0\}, considering it is surrounded with infinitely-long zeros on both sides
