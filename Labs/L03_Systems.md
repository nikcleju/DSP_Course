---
title: DIgital systems
subtitle: Lab 3, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should check basic properties of digital systems for
easy systems implemented in Matlab

# Theoretical aspects

The following aspects shall be explained.


1. Functions in Matlab
    - define in a dedicated file
    - input and output arguments

2. Functions as discrete systems 
    - one input vector, one output vector
    - implements some mathematical transformation of the input vector

3. Functions as arguments to another function
    - a function can have an input argument another function
    - example at board

3. Properties of discrete systems:
    - linearity:  
    $$H\{a \cdot x_1[n] + b \cdot x_2[n]\} = a \cdot H\{x_1[n]\} + b \cdot H\{x_2[n]\}$$
    - time invariance:
    $$H\{x[n-k]\} = y[n-k],  \textrm{ where } y[n] = H\{x[n]\}$$


# Exercises

1. Create a function `mysys1()` that implements the following system $H_1$:
$$y[n] = H_1\{x[n]\} = n \cdot x[n] + 5$$
    - the function takes 1 input argument `x` and outputs 1 result vector `y`

2. Create a function to test linearity of a system, `test_linear()`, by checking if the linearity equation holds
    - the function shall take one input argument, a **function handle** of the system function, e.g. the function will be called as `test_linear(@mysys1)`
    - inside, the function shall generate two random vectors `x` and `y` and two random constants `a` and `b`
    - the function shall apply the system (the argument function) to `a*x`, `b*y`, and `a*x + b*y`, and shall check if the results verify the linearity equation
    - the check shall be repeated for 5 times, with 5 different randomly generated data
    - if the linearity equation holds every time, the function shall return 1; otherwise the return value shall be 0

3. Create functions to implement other two systems, and check their linearity also
$$y[n] = x[n] + 0.5 x[n-1] + 1$$
$$y[n] = (x[n])^2 + 4$$

4. Implement a similar function to test time invariance of a system
    - the system will be applied to a vector `x`, and to  `x` prepended with a variable number of zeros (i.e. time delayed)
    - the outputs shall be checked if they verify the time invariance equation

# Final questions


1. TBD
