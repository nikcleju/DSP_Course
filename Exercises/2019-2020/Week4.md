---
title: Exercises Week4
subtitle: DSP
documentclass: scrartcl
fontsize: 12pt
---

\newcommand*{\underuparrow}[1]{\ensuremath{\underset{\uparrow}{#1}}} 

1. Compute the convolution of the two sequences $x_1 = {...0,0,1,2,\underuparrow{1},3,1,4,0,0,...}$
and $x_2 = {...0,0,3,\underuparrow{2},1,0,0,...}$, in two ways:
    a. in the time domain
    b. using the sliding window transform
    c. using polynomials (e.g. using the Z transform)
    
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

