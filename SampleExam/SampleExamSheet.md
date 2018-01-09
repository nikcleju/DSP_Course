---
title: DSP Sample Exam
documentclass: scrartcl
fontsize: 12pt
---

\newcommand*{\underuparrow}[1]{\ensuremath{\underset{\uparrow}{#1}}}

This is a **sample exam sheet**. The exercises / questions are for illustrative purposes only. 
The exercises shown here are merely the ones from the lectures. In the real exam, they will be changed.


# Exercises

1. (2p) Is the signal $x[n] = sin(3n)$ periodic? If yes, compute its period. If no, explain why.

1. (2p) Compute the convolution of the two sequences $x_1 = {...0,0,1,2,\underuparrow{1},3,1,4,0,0,...}$
and $x_2 = {...0,0,3,\underuparrow{2},1,0,0,...}$

2. (3p) Find the **anti-causal** signal $x[n]$ which has the Z transform
$$X(z) = \frac{7}{(1 - 2z^{-1})(1+0.5z^{-1})}$$
    
1. (3p) Consider a signal $x[n] = \left\{ ...,0,-1,2,\underuparrow{-3},2,-1,0,...\right\}$, whose Fourier transform is $X(\omega)$.
Compute the following values:
    a. $X(0)$
    b. $\int_{-\pi}^{\pi} |X(\omega)|^2 d\omega$
    
1. (3p) A signal $x[n]$ has a Z transform with one pole $p_1 = -0.5$ and one zero $z_1 = 0.9$.
It is known that at $\omega = \pi$, the modulus of the Fourier transform is $|X(\omega=\pi)| = 1$.
    a. Find the signals's Z transform $X(z)$
    b. Find the values $|X(\frac{\pi}{2})|$, $|X(\frac{-\pi}{2})|$ and $|X(0)|$
    c. Sketch $|X(\omega)|$
    
1. (3p) Consider the following system
$$H(z) = \frac{1 - 2z^{-1} + z^{-2}}{1 + 2z^{-1} + z^{-2}}$$
	a. Find the difference equation of the system $y[n] = ...$
	a. Implement the system in **Direct-Form II** structure
    
1. (3p) Which of the following filters has a linear-phase? Justify for each one.
    a. $H(z) = 7 + 3 z^{-1} + z^{-2} + 7z^{-3} + 3 z^{-4} + z^{-5}$
    a. $H(z) = \frac{1 + 2 z^{-1} + z^{-2}}{1 - 2 z^{-1} + z^{-2}}$
    a. $H(z) = 1 + 2z^{-1} + z^{-2}$    
    
# Theory

1. (2p) Consider two analog signals $x_1(t) = cos (2 \pi 500 t)$ and $x_1(t) = cos (2 \pi 1000 t)$. Find the sampling frequency $F_s = ?$ for which
the resulting discrete signals $x_1[n]$ and $x_2[n]$ are actually identical.

1. (2p) Explain the difference between a non-recursive and a recursive system.

1. (2p) What is the equivalent impulse response for the following interconnection of systems:

	![](fig/SYS_SeriesParallel.png){#id .class width=40%}

1. (2p) A signal $x[n]$ has the Region of Convergence $0.2 < |z| < 1.4$. Is the signal causal / anti-causal / bilateral? Justify your choice.

1. (2p) Fill in the blanks: "A causal system is stable if _______________ are in ______________________ ".

1. (2p) A discrete periodic signal with period $N$ can be expressed as a sum of sinusoidal components. 
	a. What are the frequencies of the sinusoidal components? 
	b. What do the Fourier series coefficients tell us about the sinusoidal components?

1. (2p) Fill in the blanks:
    - A signal which is **discrete in time** is _________ in frequency
    - A signal which is **periodic in time** is _________ in frequency
    - A signal which is **discrete and periodic in time** is _________ in frequency

1. (2p) Prove that an input signal $x[n] = A e^{j \omega_0 n}$, when applied to the input of a Linear and Time Invariant (LTI) system, produces an output $y[n]$ that is proportional to the input: 
$y[n] = x[n] \cdot H(\omega_0)$.

1. (2p) Where are the poles located for a digital oscillator which oscillates with frequency $\omega = \frac{\pi}{2}$? Draw the poles on the pole-zero diagram. 
