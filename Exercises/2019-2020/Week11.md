---
title: Exercises Week 11
subtitle: DSP
documentclass: scrartcl
fontsize: 12pt
---

1. A digital filter has the following properties:
    - it is a high-pass filter of order 1
    - the pole is situated at a distance 0.9 from the origin
    - continuous signals are completely blocked by the filter

	Requirements:

	  a. Draw the pole-zero diagram and find the system function $H(z)$
	  b. Compute the amplitude response and the phase response of the filter
	  c. Normalize the filter such that $| H(\pi) | = 1$
	  d. Find the output signal $y[n]$ if the input signal is $x[n] = 2 \cos(\frac{\pi}{6}n + \frac{\pi}{4}), n \in \mathbb{Z}$


\smallskip

2. Design two filters of order 2 of the following types, and write their difference equation:
    * a low-pass filter
    * a band-pass filter with central frequency around the frequency $\omega = \frac{3\pi}{4}$