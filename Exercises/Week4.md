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
    a. using the Z transform


2. Find the Z transform of the following signals
    a. $$x[n] = \begin{cases}
	\left( \frac{1}{3} \right)^n, & n \geq 0 \\
	\left( \frac{1}{2} \right)^{-n}, & n < 0
	\end{cases}
	$$
    b. $$x[n] = \left( \frac{1}{2} \right)^n \sin (\frac{\pi}{3}n) u[n] $$
