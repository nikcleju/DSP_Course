---
title: Implementing digital systems in Simulink
subtitle: Lab 6, DSP
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
    - settings needed for discrete models and simulation. Open menu Simulation -> Model Configuration
    Parameters and set the options as shown below.
![Model settings for discrete models](img/L4_Settings_Model.png)
    

2. Basic Simulink blocks for digital signal processing
    - mathematical operations: sum, product, gain
    - unit delays
    - input data: unit step, ramp etc
    - multimedia data: FromMultimediaFile, ToAudioSink
    - visualization: Scope
    - miscellaneous: Manual Switch, Switch
    - saving data to/from Matlab environment: ToWorkspace, FromWorkspace
    
3. Special settings needed for the *From Multimedia Device* block
    - See below in the two figures
    
![Settings for the *From Multimedia Device* block - part 1](img/L4_Settings_FromMMDevice_1.png){width=50%}
![Settings for the *From Multimedia Device* block - part 2](img/L4_Settings_FromMMDevice_2.png){width=50%}
    

# Exercises

1. Create a Simulink model to implement the following system $H_1$:
$$y[n] = H_1\{x[n]\} = \frac{1}{4}(x[n]  + x[n-1] + x[n-2] + x[n-3])$$
    - the system should be implemented as a Subsystem block with one input and one output signal

1. Visualize the impulse response of the system
    - add a unit impulse as the input (hint: can be created from two unit ramp blocks, delayed)
    - add a Scope at the output to visualize the data
    - also save the data to workspace (ToWorkspace block) and plot the impulse response from the command line

1. Apply the system to the audio data (mp3 file) loaded with FromMultimediaFile and play the resulting output (ToAudioSink). How is the sound affected?
    - make sure you set the properties of the *From Multimedia File* block as shown above


# Final questions


1. TBD
