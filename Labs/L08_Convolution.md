---
title: Convolution
subtitle: Lab 6, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should know the convolution equation and be able to implement it 
in Matlab

# Theoretical aspects

For two signals $x[n]$ and $h[n]$, the **convolution** operation is defined as
$$y[n] = \sum_{k=-\infty}^{\infty}x[k] h[n-k]$$

When one signal is the input to a LTI system, and the other signal is
the impulse response of the system, the convolution defines the output
of the system.

Properties of convolution:

  * it is commutative
  * it is associative
  * convolution with $\delta[n]$ leaves the signal unchanged

LTI systems interconnection:

  * connection in series $<=>$ convolution of their impulse responses
  * connection in parallel $<=>co$ sum of their impulse responses

  

# Exercises

1. Implement a Matlab function `y = myconv(x,h)` which implements convolution.
The function is given two input vectors and outputs the resulting vector.

2. Load an audio signal and extract an 100000-long sequence of it.
Convolve the sequence with the impulse response $\{ 1/6, 1/6, 1/6, 1/6, 1/6, 1/6\}$.
Play the resulting sequence and compare with the original.

3. Download the "IM Reverbs Pack" archive from [http://www.voxengo.com/impulses/](http://www.voxengo.com/impulses/).
It contains impulse responses that create a reverberation effect. 
    a. Unzip and play the file "Scala Milan Opera Hall.wav".
    b. Load file "Scala Milan Opera Hall.wav" in Matlab (use `audioread()`). Restrict the data to about 1 second length.
    Call the resulting vector **`h`**.
    c. Load the first 4 seconds of "Kalimba.mp3" (use `audioread()`), convolve with **`h`** and play the result (use `audioplayer()`).
    How does the signal sound? What audio effect did we implement here?

4. Check the length of the convolution result vector, and deduce the general
rule: what is length of the convolution of two signals of lengths $L_1$ and $L_2$?

5. Redo exercise 2 using the `conv()` function from Matlab.


# Final questions


1. TBD
