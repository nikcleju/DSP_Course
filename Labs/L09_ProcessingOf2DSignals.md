---
title: Processing of 2D Signals (Images)
subtitle: Lab 09, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should be able to implement basic low-pass and high-pass filters
for 2D data (images).

# Exercises

1. Load the `Lena` image (use `imread()`) and display it (use `imshow()`).

2. Implement the following 2D system:
$$\begin{split}
y[i,j] =& \frac{1}{9}x[i-1,j-1] + \frac{1}{9}x[i-1,j] + \frac{1}{9}x[i-1,j+1] + \\
& + \frac{1}{9}x[i,j-1] + \frac{1}{9}x[i,j] + \frac{1}{9}x[i,j+1] + \\
& + \frac{1}{9}x[i+1,j-1] + \frac{1}{9}x[i+1,j] + \frac{1}{9}x[i+1,j+1].
\end{split}$$
Display the resulting image. What has changed? What type of filter is this?

3. Repeat the same operation 3 times. Display the resulting image. What has changed?

4. Implement the following 2D system:
$$y[i,j] = -\frac{1}{4}x[i-1,j] - \frac{1}{4}x[i,j-1] + \frac{1}{2}x[i,j] - \frac{1}{4}x[i,j+1] - \frac{1}{4}x[i+1,j].$$
Display the resulting image. What has changed? What type of filter is this?

5. Repeat the same operation 3 times. Display the resulting image. What has changed?


# Final questions


1. TBD
