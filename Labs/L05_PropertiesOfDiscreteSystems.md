---
title: Properties of discrete systems
subtitle: Lab 5, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should create and use discrete systems in the Simulink environment,
and know how to check their linearity and time invariance properties

# Theoretical aspects

The following aspects shall be explained.
    
1. Properties of discrete systems:
    - linearity:  
    $$H\{a \cdot x_1[n] + b \cdot x_2[n]\} = a \cdot H\{x_1[n]\} + b \cdot H\{x_2[n]\}$$
    - time invariance:
    $$H\{x[n-k]\} = y[n-k],  \textrm{ where } y[n] = H\{x[n]\}$$

   

# Exercises

1. Create a Simulink model to implement the following system $H_1$:
$$y[n] = H_1\{x[n]\} = 0.8 y[n-1] + 0.25 x[n]  + 0.1 x[n-1]$$
    - the system should be implemented as a Subsystem block with one input and one output signal


2. Test linearity of this system by checking if the linearity equation holds
    - create multiple copies of the system inside the model (copy/paste)
    - use two randomly generated input vectors `x` and `y` (use one of the *Random* blocks), and some two constants `a` and `b`
    - check that the output of the system when the input is `a*x + b*y` is exactly equal to the weighted sum of the outputs applied separately to `x` and `y`

3. Test time-invariance in a similar way
    - the system will be applied to an input vector `x`, and to  `x` prepended with a variable number of zeros (i.e. time delayed)
    - the outputs shall be checked if they verify the time invariance equation

4. Find an input signal $x[n]$ to show that the system $y[n] = y[n-1] + x[n]$ is unstable.
Show it by simulating the model and displaying the output.

4. Repeat 1-3 for two other systems
    - $y[n] = \left( x[n] \right)^2 + 0.1 x[n] + \sqrt{x[n]})$
    - $y[n] = n \cdot x[n] + x[n-1]$


# Final questions


1. TBD
