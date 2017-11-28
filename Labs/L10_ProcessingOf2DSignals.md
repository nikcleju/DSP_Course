---
title: Processing of 2D Signals (Images)
subtitle: Lab 10, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should be able to implement basic low-pass and high-pass filters
for 2D data (images).

# Exercises

1. Load the `Lena` image (use `imread()`) and display it (use `imshow()`).

2. Apply the system 
$y[n] = \frac{1}{4}x[n-1] + \frac{2}{4}x[n] + \frac{1}{4}x[n+1]$
to **every row** of the Lena image, and then to **every column**
of the image. Ignore the first and last row/column.
    a. What type of filter is this? Find $H(z)$, find the poles and 
    the zeros, and deduce the type of filter.
    b. Display the resulting image. How did it change?

3. Repeat the same operation further 9 times. Display a $2x2$ 
figure and display the original image, the image filtered once,
the image filtered 5 times, and the image filtered 10 times.

4. Apply the following 2D system on the Lena image. 
Display the resulting image. What has changed? 
What type of 2D filter is this?

$$\begin{split}
y[i,j] = \frac{1}{16}x[i-1,j-1]
-\frac{2}{16}x[i-1,j]
+\frac{1}{16}x[i-1,j+1] \\
-\frac{2}{16}x[i,j-1]
+\frac{4}{16}x[i,j]
-\frac{2}{16}x[i,j+1] \\
+\frac{1}{16}x[i+1,j-1]
-\frac{2}{16}x[i+1,j]
+\frac{1}{16}x[i+1,j+1]
\end{split}$$



5. Repeat the same operation 3 times. Display the resulting image. What has changed?


# Final questions


1. TBD
