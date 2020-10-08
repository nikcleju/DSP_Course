---
title: Working with discrete 1D signals
subtitle: Lab 2, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should gain knowledge on some of the basic Matlab functions for handling 
discrete unidimensional signals

# Theoretical aspects

The following aspects shall be explained

   
1. Plotting data signals (vectors)
    - multiple plots on same graph
    - plot options
    - sub-figures

2. Loading / saving data from .mat files

3. Working with audio data
    - importing signals from audio files (`audioread()` function)
    - playing signals through the speaker

4. Applying windows to signals
    - concept of window
    - Hann window in Matlab
        

# Exercises

1. Plot on the same figure the signals $sin(2 \pi f t)$ and $cos(2 \pi f t)$ , with $f = 0.3$ and $t \in [0, 10]$.

2. Save the vectors above in the file 'mysave.mat'. Clear the variables from the Matlab workspace, then load them back from 'mysave.mat'

3. Load the audio file 'sound.wav' in the Matlab workspace

    a. Play it through the computer's audio device
    b. Change the sampling frequency to half the correct value, and play again. How will the sound be changed?
    c. Amplify the sound by multiplying the data by 4. Play the sound and observe the difference.
    d. Swap the left and right channels (it's a stereo file).
    e. Multiply each audio channel with a periodic rectangular window and listen to
    the results. Change the window to a Hann window (or simply sinusoidal).
    
4. Generate a long signal (1000000 elements) looking like $[1, -1, 1, -1, ...]$ and play it using $Fs = 8000$. 
What signal is generated? What is it's frequency? Hints:
    - what is the discrete frequency of the signal?
    - what is the analog frequency reconstructed?

5. Generate and play a 3 seconds long sinusoidal signal with $f=2000Hz$, considering $Fs = 8000Hz$


# Final questions

1. TBD
