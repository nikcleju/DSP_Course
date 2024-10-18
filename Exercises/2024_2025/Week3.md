---
title: Exercises Week 3
subtitle: DSP
documentclass: scrartcl
fontsize: 12pt
---

1. Characterize the following  systems with respect to:

    - Memory
    - Linearity
    - Time invariance
    - Causality
    - Stability

    a. $y[n] = n \cdot x[n^2]$
    a. $y[n] = x[n] \cdot cos(\omega_0 n)$
    a. $y[n] = sin(x[n])$
    a. $y[n] = x[n] + n \cdot x[n+1]$

1. Consider the following discrete signal $x[n]$:
    $$x[n] = 
    \begin{cases}
    1 + \frac{n}{3}, &-3 \leq n \leq -1\\
    1, &0 \leq n \leq 3\\
    0, &elsewhere
    \end{cases}
    $$

    a. Write the expression of $x[n]$ based on the signal $\delta[n]$
    b. Write the expression of $x[n]$ based on the signal $u[n]$


2. Compute the convolution of the signals 
$x_1[n] = \{ ...,0,1,2,3,4,0,...\}$ and $x_2[n] = \{...,0,2,2,3,3,0,...\}$
