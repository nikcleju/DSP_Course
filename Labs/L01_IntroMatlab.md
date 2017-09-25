---
title: Introduction to Matlab
subtitle: Lab 1, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Introducing students to the Matlab development environment.

# Theoretical aspects

The following aspects shall be explained

   
1. Matlab windows. Working in command line and with script files

2. Scalar-based operations
	- defining scalar variables
	- arithmetic operations with scalars
	- logical operations (comparisons etc)
	- trigonometric functions and constants (pi)
	- other functions (exponential, logarithm)

3. Array-based operations (vectors / matrices)
	- defining constant arrays
	- defining vectors via start:stop:step
	- array indexing, access to elements, modifying some values
	- arithmetic operations with arrays
	- element-wise operations 
	- logical operations (comparisons etc) with arrays
	- functions applied to arrays (trigonometric, mathematical functions, length/min/max/sum, etc)
	- concatenation of arrays
	- graphical representation of a vector
        

# Exercises

1. Define two variables $a=5$ and $b=0.3$ and compute $a+b$, $\frac{a}{b}$, $a^b$, $e^{a + ln(b)}$, $sin(a) + cos (b + \frac{\pi}{2})$

2. Define a vector $A$ with 10 zeros, a matrix $B$ with $4 \times 6$ elements equal to 1, and a vector $C$ with odd numbers from 1 la 21
    - Change the third element of $A$ to 5
    - Change element $B(2,4)$ to 7
    - Square all the elements of $C$, and save the result as a new vector $D$.
    - Compute $E = 4 * C - 50$.
    - Compare element-wise the vectors $C$ and $E$. How many elements of $C$ are larger than the corresponding elements from $E$?
    - Apply $sin()$ to all the elements of $D$
    
3. Define a vector $t$ with 1000 elements uniformly spaced between 0 and 10. Compute and plot $cos(2 \pi f t)$, where $f = 0.5$.

4. Plot the signal $sin(2 \pi f t + \frac{\pi}{4})$, with $f = 0.2$, for a duration of 3 periods.


# Final questions

1. TBD
