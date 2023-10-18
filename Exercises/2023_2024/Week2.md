---
title: Exercises Week 2
subtitle: DSP
documentclass: scrartcl
fontsize: 12pt
---


1. Consider the following discrete signal $x[n]$:
    $$x[n] = 
    \begin{cases}
    1 + \frac{n}{3}, &-3 \leq n \leq -1\\
    1, &0 \leq n \leq 3\\
    0, &elsewhere
    \end{cases}
    $$

    a. Find the values of $x[n]$ and represent the signal graphically
    b. Represent graphically the signal $x[-n + 4]$
    c. Write the expression of $x[n]$ based on the signal $\delta[n]$
    d. Write the expression of $x[n]$ based on the signal $u[n]$


2. Consider the following signal: 
    $$x[n] = 
    \begin{cases}
    1, &-1 \leq n \leq 2\\
    \frac{1}{2}, &3 \leq n \leq 4\\
    0, &elsewhere
    \end{cases}
    $$

    Represent graphically the following signals:

      a. $x[n-2]$
      b. $x[n+2]$
      c. $x[4-n]$
      d. $x[n] \cdot u[2-n]$
      e. $x[n-1] \cdot \delta[n-3]$
      f. $x[n^2]$
      g. The even part of $x[n]$
      h. The odd part of $x[n]$


3. Characterize the following  systems with respect to:

    - Memory
    - Linearity
    - Time invariance
    - Causality
    - Stability

    a. $y[n] = n \cdot x[n^2]$
    a. $y[n] = x[n] \cdot cos(\omega_0 n)$
    a. $y[n] = sin(x[n])$
    a. $y[n] = x[n] + n \cdot x[n+1]$
