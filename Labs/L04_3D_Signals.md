---
title: |
       | Processing of 3D Signals
       | (Video Sequences)
subtitle: Lab 4, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should understand and be able to operate with video data in Matlab

# Exercises

1. Load the `Lena` image (use `imread()`),
convert it to a grayscale image,
convert it to `double` type,
adapt the values to the $[0,1]$ range,
and to the and display it (use `imshow()`).

2. Create a video sequence by scrolling the Lena image 
circularly to the right, by $3$ pixels at every frame. 
Display the video at 25fps and save it to disk.

3. Create another video sequence by progressively changing the
average luminosity of the image from 0 to 1.
The video sequence should last exactly 4 seconds at 
a frame rate of 25fps.

4. Load the video file `veh.mp4`.
Convert each frame to grayscale, `double` type,
and range $[0,1]$. 
Display the video sequence.

5. **Background/foregound extraction**. 
Make a new video sequence as follows:

    output_frame = (1 - $\alpha$) * previous_output_frame + $\alpha$ * current_input_frame

    Set $\alpha \approx 1$. 

    a. Display the video sequence. What happened? What kind of filter is this?
    Rewrite the equation in the usual way (with $x[n]$ and $y[n]$)
    b. Create another video sequence as the difference between the original sequence
    and the sequence from a). Display the video sequence. What happens?
    Deduce the equation of this system. What kind of filter is this?


# Final questions


1. TBD
