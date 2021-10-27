---
title: Exercises Week 4
subtitle: DSP
documentclass: scrartcl
fontsize: 12pt
---



1. Compute the 2D convolution of the image 
	$$I = \begin{bmatrix}
    1 & 1 & 1 & 1 & 1 \\
    2 & 2 & 2 & 2 & 2 \\ 
    3 & 3 & 3 & 3 & 3 \\ 
    \end{bmatrix}$$
	with the kernel image:
	$$H = \begin{bmatrix}
    0 & 1 & 0 \\
    1 & -4 & 1 \\
    0 & 1 & 0 \\
    \end{bmatrix}$$

	Note: the result must be the same shape as the input signal.

1. Compute the convolution of the signals 
$x_1[n] = \{ ...,0,1,2,3,4,0,...\}$ and $x_2[n] = \{...,0,2,2,3,3,0,...\}$
using the Z transform.


1. Find the Z transform of the following signals:

    a. $$x[n] = \left( \frac{1}{3} \right)^n u[n]$$

    b. $$x[n] = \begin{cases}
	\left( \frac{1}{3} \right)^n, & n \geq 0 \\
	\left( \frac{1}{2} \right)^{-n}, & n < 0
	\end{cases}$$
    
	c. $$x[n] = \left( \frac{1}{2} \right)^n \sin (\frac{\pi}{3}n) u[n]$$
	