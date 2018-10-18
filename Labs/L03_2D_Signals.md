---
title: Processing of 2D Signals (Images)
subtitle: Lab 3, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should understand and be able to operate with 2D data (images).

# Exercises

1. Create a chessboard image with each square having size $5x5$ pixels.
    - black = 0, white = 1
    - show the image with `imshow()`

2. Modify the chessboard image to have light gray and dark gray instead of white and black.

3. Create a color image representing the Romanian flag (3 stripes of blue, yellow, red).

1. Load the `Lena` image (use `imread()`) and display it (use `imshow()`).

2. Construct a new image based on the `Lena`, but in which each pixel value
is set as a linear combination of the original pixels around it, as in the following equation:

    $$\begin{split}
y[i,j] = \frac{1}{9}x[i-1,j-1] + \frac{1}{9}x[i-1,j] + \frac{1}{9}x[i-1,j+1] \\
        +\frac{1}{9}x[i,j-1]   + \frac{1}{9}x[i,j]   + \frac{1}{9}x[i,j+1] \\
        +\frac{1}{9}x[i+1,j-1] + \frac{1}{9}x[i+1,j] + \frac{1}{9}x[i+1,j+1]
\end{split}$$

	Ignore the first and last row/column, if needed. 
    
	Display the resulting image. How did it change?

3. Repeat the same operation 3 times, and show it every time. How dows the image change?

4. Repeat Exercise 2 but change the values of the coefficients to
$$
\begin{bmatrix}
 0 & -1 & 0 \\
 -1 & 5 & -1 \\
 0 & -1 & 0
\end{bmatrix}
$$

4. Repeat Exercise 2 but change the values of the coefficients to
$$
\begin{bmatrix}
 0 & -1 & 0 \\
 -1 & 5 & -1 \\
 0 & -1 & 0
\end{bmatrix}
$$


4. Repeat Exercise 2 but change the values of the coefficients to
$$
\begin{bmatrix}
 -1 & -1 & -1 \\
 -1 & 8 & -1 \\
 -1 & -1 & -1
\end{bmatrix}
$$


# Final questions


1. TBD
