---
title: Exercises Week 12
subtitle: DSP
documentclass: scrartcl
fontsize: 12pt
--- 

1. Design the pole-zero plot of a signal with:
    - low frequency content
    - frequency content around the frequency $\omega = \frac{\pi}{2}$

2. A digital filter has the following properties:
    - it is a high-pass filter of order 1
    - the pole is situated at a distance 0.9 from the origin
    - constant signals are completely blocked by the filter

	Requirements:

	  a. Draw the pole-zero diagram and find the system function $H(z)$
	  b. Compute the amplitude response and the phase response of the filter
	  c. Normalize the filter such that $| H(\pi) | = 1$
	  d. Find the output signal $y[n]$ if the input signal is $x[n] = 2 \cos(\frac{\pi}{6}n + \frac{\pi}{4}), n \in \mathbb{Z}$