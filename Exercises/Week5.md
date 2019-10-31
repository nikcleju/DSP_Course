---
title: Exercises Week 5
subtitle: DSP
documentclass: scrartcl
fontsize: 12pt
---

1. Find the Z transform of the following signals
    a. $$x[n] = \begin{cases}
	\left( \frac{1}{3} \right)^n, & n \geq 0 \\
	\left( \frac{1}{2} \right)^{-n}, & n < 0
	\end{cases}
	$$
    b. $$x[n] = \left( \frac{1}{2} \right)^n \sin (\frac{\pi}{3}n) u[n] $$

1. Compute the convolution of the two signals $x_1[n] = (-2)\left( \frac{1}{3}\right)^n u[n]$
and $x_2[n] = 7\left( \frac{-1}{5}\right)^n u[n]$ using the Z transform
(Hint: Compute the Z transforms of the two signals, multiply, then do the inverse Z transform of the result
via partial fractions decomposition)


2. Find all the signals $x[n]$ which have the Z transform
$$X(z) = \frac{7}{(1 - 2z^{-1})(1+0.5z^{-1})}$$