---
title: Implementing digital systems in Simulink
subtitle: Lab 4, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should implement basic digital systems in the Simulink environment

# Theoretical aspects

The following aspects shall be explained.


1. Introduction to Simulink
    - what it is
    - how to create models
    - settings needed for discrete models and simulation

2. Basic Simulink blocks for digital signal processing
    - mathematical operations: sum, product, gain
    - unit delays
    - input data: unit step, ramp etc
    - multimedia data: FromMultimediaFile, ToAudioSink
    - visualization: Scope
    - miscellaneous: Manual Switch, Switch
    - saving data to/from Matlab environment: ToWorkspace, FromWorkspace
    
3. Properties of discrete systems:
    - linearity:  
    $$H\{a \cdot x_1[n] + b \cdot x_2[n]\} = a \cdot H\{x_1[n]\} + b \cdot H\{x_2[n]\}$$
    - time invariance:
    $$H\{x[n-k]\} = y[n-k],  \textrm{ where } y[n] = H\{x[n]\}$$


# Exercises

1. Create a Simulink model to implement the following system $H_1$:
$$y[n] = H_1\{x[n]\} = \frac{1}{4}(x[n]  + x[n-1] + x[n-2] + x[n-3])$$
    - the system should be implemented as a Subsystem block with one input and one output signal

1. Visualize the impulse response of the system
    - add a unit impulse as the input (hint: can be created from two unit ramp blocks, delayed)
    - add a Scope at the output to visualize the data
    - also save the data to workspace (ToWorkspace block) and plot the impulse response from the command line
    

2. Test linearity of this system by checking if the linearity equation holds
    - create multiple copies of the system inside the model (copy/paste)
    - use two randomly generated input vectors `x` and `y`, and two random constants `a` and `b`
    - check that the output of the system when the input is `a*x + b*y` is exactly equal to the weighted sum of the outputs applied separately to `x` and `y`

4. Test time-invariance in a similar way
    - the system will be applied to an input vector `x`, and to  `x` prepended with a variable number of zeros (i.e. time delayed)
    - the outputs shall be checked if they verify the time invariance equation

5. Apply the system to the audio data (mp3 file) loaded with FromMultimediaFile and play the resulting output (ToAudioSink). How is the sound affected?
    - some tweaking of the parameters of the FromMultimediaFile block is needed, check with the teacher


# Final questions


1. TBD
