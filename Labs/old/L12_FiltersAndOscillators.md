---
title: Filters and Oscillators
subtitle: Lab 12, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should be able to design basic filters and oscillators in Matlab
and implement them in Simulink.

# Exercises

1. Use the Filter Design tool in Matlab (`fdatool`) to design a 
IIR high-pass filter with order 3, with cutoff frequency $0.07$.
Implement the filter in Simulink and hear it work on a sample input audio file.
    
2. Use the Filter Design tool in Matlab (`fdatool`) to design an oscillator
with frequency 0.05. Implement it in Simulink, visualize & play the output signal.
    * design a system of order 2 with 2 conjugate poles placed **on the unit circle** 
    at the correct frequency, and 2 zeros at low & high frequencies
    * implement the system in Simulink, **omitting the input signal** (not necessary)
    * set a non-zero initial condition in the system, to start-up the oscillator


# Final questions

1. TBD
