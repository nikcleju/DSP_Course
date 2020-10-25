
# Chapter III: The Z Transform

## III.1 Introducing the Z transform

### Preliminaries: complex numbers

Recap: Complex numbers

- real and imaginary part
- **modulus and phase**
- graphical interpretation
- Euler formula
- modulus and phase of $e^{jx}$

### Definition of Z transform

- The Z Transform of a signal $x[n]$, called $X(z)$, is defined as:
$$X(z) = \sum_{-\infty}^\infty x[n] z^{-n}$$

- Notation:
$$\mathcal{Z}\left( x[n] \right) = X(Z)$$
$$x[n] \trZ X(Z)$$

### Definition of Z transform

- Similar to the Laplace transform for continuous signals

- The Z transform associates **a polynomial** to a signal 
(think Information Theory class)

- Why?

    - Easy representation of convolution

    - Convolution of two signals = multiplication of polynomials
    
    - Efficient descriptions of complicated systems with poles and zeros

### Region of convergence

- $X(Z)$ is a sum dependent on some variable $z$ (complex number)

- The **Region Of Convergence (ROC)** = the values of $z$ for which the sum is convergent 
(does not go to $\pm \infty$)

### Examples

Exercises:

- Compute Z transform for the following signals:

	$x[n] = {1, 2, 5, 7, 0}$, (with time origin in 1 or in 5)

	$\delta[n]$, $\delta[n-k]$, $\delta[n+k]$

	$x[n] = \left(\frac{1}{2}\right)^n u[n]$

### Region of convergence

- $z$ is a complex number 

- Region of convergence (ROC) is displayed as an area in the complex plane
(also known as the Z plane)

### Region of convergence

- For **finite-support** signals, the ROC is the **whole** Z plane, 
possibly except 0 or $\infty$

- For **causal** signals, the ROC is the **outside** of a circle:
	$$|z| > r_1$$

    - e.g. if $|z|$ is big enough, the sum is convergent
    
- For **anti-causal** signals, the ROC is the **inside** of a circle:
	$$|z| < r_2$$
	
	- e.g. if $|z|$ is small enough, the sum is convergent

- Why circles? Because only modulus of $z$ matters
	
	- complex numbers on a circle have the same modulus

### Region of convergence

- For **bilateral** signals, the ROC is the area **between** two circles:
	$$r_1 < |z| < r_2$$
	
	- bilateral signals have a causal part and an anti-causal part

- For finite-support signals, the two "circles" 
are of "radius" $0$ and $\infty$

- Two different signals can have the same expression of $X(z)$, 
but with different ROC!

    - ROC is an essential part in specifying a Z transform
    - it should never be omitted


### The Inverse Z Transform

- From a purely mathematical point of view, $X(z)$ is a complex function
	$$X(z) = \sum_{n = -\infty}^\infty x[n] z^{-n}$$
	
- Proper definition of inverse transform is based on 
the theory of complex functions

- Multiply with $z^{n-1}$ and integrate along a contour C inside the ROC:

	$$\oint_C X(z) z^{n-1} dz = \oint_C \sum_{-\infty}^\infty x[k] z^{n-k-1} dz = \sum_{-\infty}^\infty x[k] \oint_C z^{n-k-1} dz$$

### The Inverse Z Transform

- The Cauchy integral theorem says that:
	$$ \frac{1}{2 \pi j} \oint_C z^{n-k-1} dz= 
	\begin{cases}
	1, &\mbox{if } k = n \\
	0, &\mbox{if } k \neq n
	\end{cases}
	$$
- And therefore:
$$x[n] = \frac{1}{2 \pi j} \oint_C X(z) z^{n-1} dz$$

- We will not use this relation in practice, but instead will rely 
on **partial fraction decomposition**

<!--
### 2020-2021 Exam

2020-2021 Exam

* Properties of Z Transform: only 1, 2, and 9
-->

### Properties of Z transform

#### 1. Linearity

If $x_1[n] \trZ X_1(z)$ with ROC1, and $x_2[n] \trZ X_2(z)$ with ROC2, then:
$$a x_1[n] + b x_2[n] \trZ a X_1(z) + b X_2(z)$$
and ROC is at least the intersection of ROC1 and ROC2.

Proof: use definition

### Properties of Z transform
#### 2. Shifting in time

If $x[n] \trZ X(z)$ with ROC, then:
$$x[n-k] \trZ z^{-k} X(z)$$
with same ROC, possibly except $0$ and $\infty$.

Proof: by definition

* valid for all $k$, also for $k < 0$
* delay of 1 sample = $z^{-1}$

### Properties of Z transform
#### 3. Modulation in time

If $x[n] \trZ X(z)$ with ROC, then:
$$ e^{j \omega_0 n} x[n] \trZ X \left(e^{- j\omega_0}z \right)$$
with same ROC

Proof: by definition


### Properties of Z transform
#### 4. Reflected signal

If $x[n] \trZ X(z)$ with ROC $r_1 < |z| < r_2$, then:
$$ x[-n] \trZ X \left( z^{-1} \right)$$
with ROC $\frac{1}{r_2} < |z| \frac{1}{r_1}$

Proof: by definition


### Properties of Z transform
#### 5. Derivative of Z transform

If $x[n] \trZ X(z)$ with ROC, then:
$$ n x[n] \trZ -z \frac{dX \left( z \right)}{dz}$$
with same ROC

Proof: by derivating the difference


### Properties of Z transform
#### 6. Transform of difference

If $x[n] \trZ X(z)$ with ROC, then:
$$ x[n] - x[n-1] \trZ (1-z^{-1}) X(z)$$
with same ROC except $z=0$.

Proof: using linearity and time-shift property


### Properties of Z transform
#### 7. Accumulation in time

If $x[n] \trZ X(z)$ with ROC, then:
$$ y[n] = \sum_{k=-\infty}^{n} x[k] \trZ \frac{X(z)}{(1-z^{-1})}$$
with same ROC except $z=1$.

Proof: $x[n] = y[n] - y[n-1]$, apply previous property


### Properties of Z transform
#### 8. Complex conjugation

If $x[n] \trZ X(z)$ with ROC, and $x[n]$ is a complex signal, then:
$$ x^*[n] \trZ X^* \left( z^* \right)$$
with same ROC except $z=0$.

Proof: apply definition

#### Consequence
If $x[n]$ is a real signal, the poles / zeroes are either real or in 
complex pairs



### Properties of Z transform
#### 9. Convolution in time

If $x_1[n] \trZ X_1(z)$ with ROC1, 
and $x_2[n] \trZ X_2(z)$ with ROC2, then:
$$ x[n] = x_1[n] * x_2[n] \trZ X(z) = X_1(z) \cdot X_2(z)$$
and ROC the intersection of ROC1 and ROC2.

Proof: use definition

* **Very important property!**
* Can compute the convolution of two signals via the Z transform


### Properties of Z transform
#### 10. Correlation in time

If $x_1[n] \trZ X_1(z)$ with ROC1, 
and $x_2[n] \trZ X_2(z)$ with ROC2, then:
$$ r_{x_1x_2}[l] = \sum_{n=-\infty}^{\infty} x_1[n] x_2[n-l] \trZ R_{x_1 x_2}(z) = X_1(z) \cdot X_2(z^{-1})$$
and ROC the intersection of ROC1 and with the ROC of $X_2(z^{-1})$ (see reflection property)

Proof: correlation  = convolution with second signal reflected, use convolution and reflection properties


### Properties of Z transform
#### 11. Initial value theorem

If $x[n]$ is a causal signal, then

$$ x[0] = \lim_{z \to \infty}X(z)$$

Proof: 
$$X(z) = \sum_{n=0}^{\infty} x[n] z^{-n} = x[0] + x[1]z^{-1} + x[2]z^{-2} + ...$$
When $z \to \infty$, all terms $z^{-k}$ vanish.


### Common Z transform pairs

- Easily found all over the Internet

![Common Z transform pairs](img/Z-transform-pairs.jpg){.id height=80%}


## III.2. Z transforms which are Rational Functions

### Rational functions

- Many Z transforms are in the form of a **rational function**, i.e.
a **fraction** where
    - numerator = **polynomial** in $z^{-1}$ or $z$
    - denominator = **polynomial** in $z^{-1}$ or $z$

	$$X(z) = \frac{B(z)}{A(z)} = \frac{\sum_{k=0}^M b_k z^{-k}}{\sum_{k=0}^N a_k z^{-k}} =
	\frac{b_0 + b_1 z^{-1}+ b_2 z{-2} + ... + b_M z^{-M}}{a_0 + a_1 z^{-1}+ a_2 z{-2} + ... + a_N z^{-N}}$$   
		
- Example:
	$$X(z) = \frac{3 + 2 z^{-1} + 4 z^{-2}}{1 - 5z^{-2} + 7 z^{-4}}$$

### Poles and zeros

- Any polynomial is completely determined 
by its **roots** and a **scaling** factor
$$Any \; polynomial(X) = G \cdot (X-x_1) \dots (X-x_n)$$

- The **zeros** of $X(z)$ are the **roots of the numerator** $B(z)$

- The **poles** of $X(z)$ are the **roots of the denominator** $A(z)$

- The zeros are usually named $z_1, z_2, ... z_M$, 
and the poles $p_1, p_2, ... p_N$.

  
### Poles and zeros

- The transform $X(z)$ can be rewritten as:
	$$X(z) = \frac{b_0}{a_0} \cdot z^{N-M} \cdot \frac{(z-z_1)...(z-z_M)}{(z-p_1)...(z-z_N)} = \frac{b_0}{a_0} \cdot \frac{(1-z_1 z^{-1})...(1-z_M z^{-1})}{(1-p_1 z^{-1})...(1-z_N z^{-1})}$$

- It has:

	- M zeros with finite values
	- N poles with finite values
	- and either N-M zeros in 0, if N > M, or N-M poles in 0, if N < M (trivial poles/zeros)


### Poles and zeros

- Example:
	$$\begin{split}
	X(z) =& \frac{2z^2 + 0.4 z - 1 }{3z^3 + 2.4 z^2 - 3z - 2.4} \\
	=& \frac{2}{3} \cdot \frac{(z - 0.3)(z + 0.5)}{(z-1)(z+1)(z+0.8)} \\
	=& z^{-1} \cdot \frac{( 2 + 0.4 z^{-1} - 1 z^{-2}}{3 + 2.4 z^{-1} - 3z^{-2} - 2.4z^{-3}} \\
	=& z^{-1} \cdot \frac{2}{3} \cdot \frac{(1 - 0.3z^{-1})(1 + 0.5z^{-1})}{(1-z^{-1})(1+z^{-1})(1+0.8z^{-1})} \\
	\end{split}$$

- Multiple ways of writing same expression


### Graphical representation

- The graphical representation of poles and zeros in the complex
place is called **the pole-zero plot**

- Graphical: poles = "x", zeros = "0"

- ROC cannot contain poles

- Example: at whiteboard


## III.3 Inverse Z transform for rational functions

### Methods for computing the Inverse Z Transform

Inverse Z Transform:

- We have X(z) and the ROC, what is the signal $x[n]=$?


Methods:

1. Direct evaluation using the Cauchy integral

$$x[n] = \frac{1}{2 \pi j} \oint_C X(z) z^{n-1} dz$$

2. Decomposition as continuous power series 

3. **Partial fraction decomposition** (the one we'll actually use)

### Partial fraction decomposition 

Any rational function 
	$$X(z) = \frac{B(z)}{A(z)} = \frac{b_0 + b_1 z^{-1}+ b_2 z{-2} + ... + b_M z^{-M}}{a_0 + a_1 z^{-1}+ a_2 z{-2} + ... + a_N z^{-N}}$$
can be decomposed in **partial fractions**:
	$$X(z) = c_0 + c_1 z^{-1} + ... c_{N-M}z^{-(M-N)} + \frac{A_1}{z-p_1} + ...
\frac{A_N}{z - p_N}$$

- Each pole $p_i$ has a corresponding partial fraction $\frac{A_i}{z - p_i}$

- First terms appear  if $M\leq N$

- Based on linearity, we invert each term individually (simple)

### Procedure for Inverse Z Transform

$$X(z) = \frac{B(z)}{A(z)}$$

1. If $M \geq N$, **divide numerator to denominator** to obtain the first terms.

	- The remaining fraction is $X_1(z) = \frac{B_1(z)}{A(z)}$, with numerator degree
	strictly smaller than denominator

2. In the remaining fraction, **eliminate the negative powers** of $z$ 
by multiplying with $z^N$. We want all powers like $z^N$, not $z^{-N}$

3. **Divide by $z$**: 
$$\frac{X_1(z)}{z} = \frac{B_1(z)}{z A(z)}$$


### Procedure for Inverse Z Transform

4. Compute the poles of $\frac{X_1(z)}{z}$ and **decompose in partial fractions**:
$$\frac{X_1(z)}{z} = \frac{A_1}{z - p_1} + ...$$


5. **Multiply back with **$z$:
$${X_1(z)} = A_1 \frac{z}{z - p_1} + ...$$

6. Convert each term back to the time domain

### Computation of partial fractions coefficients

- If all poles are distinct:
$$A_k = (z-p_k)\frac{X(z)}{z} \rvert_{z = p_k}$$

- If poles are in complex conjugate pairs
    - group the two fractions into a single fraction of degree 2

- If there exist **$m$ multiple poles of same value** (pole order $m > 1$):

	$$ \frac{A_{1k}}{z-p_k} + \frac{A_{2k}}{(z-p_k)^2} + ... + \frac{A_{mk}}{(z-p_k)^m} $$

	$$A_{ik} = \frac{1}{(m-i)!} \frac{d^{m-i}}{dz^{m-i}} \left[ (z-p_k)^m \cdot \frac{X(z)}{z} \right] \rvert_{z=p_k}$$

    - example for m = 2

### Real signals and complex poles/zeros

- Consequence of the complex-conjugate property of Z transform:

- A signal $x[n]$ with **real values** can have only: 
    - **real-valued** poles or zeroes 
    - complex poles and zeroes in **conjugate pairs**, which can
    be grouped into a single term of degree 2, with real coefficients

- If a Z transform has a complex pole or zero **without** its conjugate pair,
then the corresponding signal $x[n]$ is **complex**


### Position of poles and signal behavior

- A rational Z transform $X(z)$ = sum of partial fractions, as we just saw
  - and some initial terms $z^{k}$ in front

- Each **partial fraction** (pole) generates an **exponential signal**: 
        
		- $a^n u[n]$, or
		
        - $-a^n u[-n-1]$

- For a single partial fraction (one pole only), 
we will analyze the relation between the
position of the pole and the signal in time


### Position of poles and signal behaviour - 1 pole

- Consider a single partial fraction with **1 pole** $p_1 = a$:
	$$X(z) = C \cdot \frac{z}{z - a}, \;\; ROC: |z| > |a|$$

    - Consider only real signals $x[n] \in \mathbb{R}$  ---> $a$ is real
    - Consider only causal signals $x[n]$ ---> ROC is $|z| > |a|$

- Let's analyze how the corresponding signal looks like

    - use the formulas:

	$$x[n] = a^n u[n]$$

### Position of poles and signal behavior - 1 pole

How does the signal look like, depending on the pole value $p_1=a$:

- Pole **inside** the unit circle ($|a| < 1$) = **exponentially decreasing** signal

- Pole **outside** the unit circle ($|a| > 1$) = **exponentially increasing** signal

- Pole **exactly on** unit circle ($|a| = 1$)= not increasing, not decreasing, but **constant** signal

- **Negative** pole ($a < 0$) ---> **alternating** signal

- **Positive** value ($a > 0$) --> **non-alternating** signal

### Position of poles and signal behavior - 1 pole

![Signal behavior for 1 pole](img/1PoleSignalBehavior.png)


### Position of poles and signal behavior - 1 double pole

- Consider a **double pole** ($p_1 = a$, $p_2 = a$):
	$$X(z) = C \frac{a z}{(z-a)^2} = C \frac{a z^{-1}}{(1 - a z ^{-1})^2}, ROC: |z| > |a|$$

- The corresponding signal is:
	$$x[n] = n a^n u[n]$$

Effect of double pole in $p_1  = p_2 = a$:

- Pole inside the unit circle ($|a| < 1$) = decreasing signal
- Pole outside the unit circle ($|a| > 1$) = increasing signal
- Pole **exactly on unit** circle ($|a| = 1$) = **increasing signal**
- Negative pole ($a < 0$) = alternating signal
- Positive value ($a > 0$) = non-alternating signal

### Position of poles and signal behavior - 1 double pole

![Signal behavior for 1 double pole](img/1DoublePoleSignalBehavior.png)


### Position of poles and signal behavior - conjugate poles

- Consider a **pair of complex conjugate** poles ($p_1 = a$, $p_2 = a^*$):
	$$X(z) = \frac{1 - a \cos{\omega_0} z^{-1}}{1 - 2 a \cos{\omega_0} z^{-1} + a^2 z^{-2}}, ROC: |z| > |a|$$
	
- The correponding signal is:	
	$$x[n] = a^n \cos(\omega_0 n) u[n]$$

- Effect of a pair of complex conjugate poles = **sinusoidal with exponential envelope**

### Position of poles and signal behavior - conjugate poles

Effect of a pair of complex conjugate poles = **sinusoidal with exponential envelope**
  
- **phase** of poles gives the **frequency** of the sinusoidal
    
- **modulus** of poles gives the **exponential envelope**
    
  - poles **inside** unit circle = **decreasing** signal
    
  - poles **outside** unit circle --> **increasing** signal
    
  - poles **on** unit circle --> **oscillating signal**, constant amplitude, 
  neither increasing nor decreasing


What if the poles are double?

- poles **on** unit circle --> **increasing** signal
- otherwise, similar to above

### Position of poles and signal behavior - conjugate poles

![Signal behavior for 1 double pole](img/1ComplexPairPolesSignalBehavior.png){.id height=80%}


### Position of poles and signal behavior

Summary: position of poles and behavior of signal

- A Z transform can be decomposed into **partial fractions**, i.e. separate poles

- Each pole means a separate fraction, means a separate component within the signal

- Conclusions (for real signals, causal):
    - **all poles inside** unit circle = **bounded** signal
	  - because all components are exponentially decreasing
    - **simple** poles **on** unit circle = **bounded** signal
	  - not increasing to infinity, but also not decreasing
    - **otherwise** = **unbounded** signal
    
	- poles **closer to 0** = **faster decreasing** signal
    - poles **farther from 0** = **slower decrease** of signal



## III.4 LTI systems and the Z Transform

### System function of a LTI system

- Consider a LTI system with impulse response $h[n]$

- If we aplpy an input signal $x[n]$, the output is (convolution):
	$$y[n] = x[n] * h[n]$$

- In Z transform, **convolution = product** of transforms
	$$Y(z) = X(z) \cdot H(z)$$

- **The system function H(z)** of a LTI system = the **Z transform of the impulse response** $h[n]$

- The system function of a LTI system is(you know this from SCS):
	$$H(z) = \frac{Y(z)}{X(z)}$$


### System function and the system equation

- Reminder: any LTI system has an equation:
	$$\begin{split}
	y[n]
	=& -\sum_{k=1}^N a_k y[n-k] + \sum_{k=0}^M b_k x[n-k] \\
	=& -a_1 y[n-1] - a_2 y[n-2] -... - a_N y[n-N] + \\
	      &+ b_0 x[n] + b_1 x[n-1] + ... + b_M x[n-M]
	\end{split}$$

- which can be rewritten as:
$$y[n] + \sum_{k=1}^n a_k y[n-k] = \sum_{k=0}^m b_k x[n-k]$$

$$\begin{split}
y[n] + a_1 y[n-1] + &a_2 y[n-2] +... + a_N y[n-N] = \\
&= b_0 x[n] + b_1 x[n-1] + ... + b_M x[n-M]\end{split}$$

### System function and the system equation

- The system function $H(z)$ can be written **directly from the equation**

- We apply the Z transform to the whole equation

	- every $y[n-k]$ becomes $z^{-k}Y(z)$
	- every $x[n-k]$ becomes $z^{-k}X(z)$
	- $Y(z)$, $X(z)$ are pulled in front as common factors

- We obtain:
$$Y(z) \left( 1 + \sum_{k=1}^N a_k z^{-k} \right) = X(z) \left( \sum_{k=0}^M b_k z^{-k} \right)$$

$$\begin{split}
H(z) = \frac{Y(z)}{X(z)} 
&= \frac{ \sum_{k=0}^M b_k z^{-k} }{ 1 + \sum_{k=1}^N a_k z^{-k} } \\
&= \frac{b_0 + b_1 z^{-1} + \dots + b_M z^{-M}}{1 + a_1 z^{-1} + \dots + a_N z^{-N}}
\end{split}$$

### System function and the system equation

$$\begin{split}
H(z) = \frac{Y(z)}{X(z)} 
&= \frac{ \sum_{k=0}^M b_k z^{-k} }{ 1 + \sum_{k=1}^N a_k z^{-k} } \\
&= \frac{b_0 + b_1 z^{-1} + \dots + b_M z^{-M}}{1 + a_1 z^{-1} + \dots + a_N z^{-N}}
\end{split}$$

- coefficients $b_k$ of $x[n]$, $x[n-1]$ ... appear at **numerator**

- coefficients $a_k$ of $y[n-1]$, $y[n-2]$ ... appear at **denominator**

    - beware of the sign change of $a_k$
	- the coefficient of $y[n]$ itself is always $a_0 = 1$
	
	
### System function of FIR systems

Particular cases:

- **FIR systems**: when all $a_k = 0$

    - only zeros, no poles ("all-zero system"), no denominator in $H(z)$
	$$H(z) = \frac{Y(z)}{X(z)} = \sum_{k=0}^M b_k z^{-k}$$
	
	- the coefficients $b_k$ are really the impulse response $h[n]$


### System function of IIR systems

Particular cases:

- If some $a_k \neq 0$ we have an **IIR system**

	- $H(z)$ has some polynomial at the denominator

    - If denominator is just $b_0$: **all-pole system**
        - has only poles, no zeros
		$$H(z) = \frac{Y(z)}{X(z)} =  \frac{ b_0 }{ 1 + a_1 z^{-1} + \dots + a_N z^{-N} }$$
    
    - Or it can be a general IIR system with both poles and zeros 
	(i.e. polynomials both at numerator or denominator)


### Stability of a system and H(z)

Reminders from chapter 2:

- **Stable** system = a **bounded input** implies a **bounded output** (BIBO)

- A system is stable if:
	$$\sum |h[n]| < \infty (\;\;\; is \; convergent)$$

### Stability of a system and H(z)

- For a system with system function $H(z)$ we have:
	$$|H(z)| = |\sum h[n] z^{-n}| \leq \sum |h[n]| \cdot |z^{-n}|$$

- Now let's consider $z$ **on the unit circle**, i.e. $|z| = |z^{-n}| = 1$:
    $$|H(z)|\rvert_{|z| = 1} \leq \sum |h[n]|$$

- If the system is **stable**, $\sum |h[n]| < \infty$ (**convergent**), so $|H(z)|\rvert_{|z| = 1} < \infty$
	- i.e. the unit circle $|z| = 1$ **is in the ROC**

### Stability of a system and H(z)

- A LTI system is stable if 
the **unit circle in inside the Region of Convergence** of $H(z)$

    - one can also prove the reciprocal, so there is equivalence

- When the system is also **causal**:
	
	- ROC of causal system = exterior of a circle given by the largest pole
	- stable = unit circle inside the ROC
    - therefore stable = all poles **inside** unit circle

- A **causal** LTI system is stable if **all the poles are inside the unit circle**


### Stability of a system and H(z)

- Alternative explanation: 

	- If one pole is **outside** unit circle, the signal component
	for that partial fraction will be exponentially **increasing**
	--> whole signal is **unbounded**


### Natural and forced response

- Consider a causal LTI system with initial conditions  = 0
    - I.C. are relevant for recursive implementations (IIR)

- Consider an input signal:
$$x[n] \trZ X(z) = \frac{N(z)}{Q(z)}$$

- Consider an impulse response (system function):
$$h[n] \trZ H(z) = \frac{B(z)}{A(z)}$$

- Then the output signal is:
$$y[n] = x[n] * h[n] \trZ Y(z) = X(z)H(z) = \frac{N(z)B(z)}{Q(z)A(z)}$$

- (Some poles and zeros might simplify, if exactly identical)

### Natural and forced response

- Denote the poles of $X(z)$ as $q_i$ and the poles of $H(z)$ as $p_i$
	- Assume all poles are *simple* (i.e. no multiplicity)
	- Assume all poles $\neq$ all zeros, so no simplification

- The output signal has components dependent on the **input signal** 
and also of the **system itself**

	$$Y(z) = \sum_{k=1}^N \frac{A_k}{1-p_k z^{-1}} + \sum_{k=1}^L \frac{Q_k}
	{1-q_k z^{-1}} $$

- and $y[n]$ is
	$$y[n] = \underbrace{\sum_{k=1}^N A_k (p_k)^n u[n]}_{natural \; response} + 
	\underbrace{\sum_{k=1}^L Q_k (q_k)^n u[n]}_{forced \; response}$$

### Natural and forced response

Any output $y[n]$ is the **sum of two signals**:

- **Natural response** $y_{nr}[n]$ = the part given by the poles of **the system** itself

- **Forced response** $y_{fr}[n]$ = given by the poles of **the input signal**

- Together they form the **zero-state response** of the system = 
the output signal when initial conditions are 0

### Zero-input response

If there are **non-zero** initial conditions, there is a **third component** as well:

- **Zero-input response** $y_{zi}[n]$ = given by the initial conditions of the system
  - It behaves similarly to the natural response, i.e. depends on the system's poles


### Transient and permanent response

- For a **stable** system, all system poles $|p_k| < 1$
  - therefore, both natural response and zero-input repsonse are made of decreasing exponentials 

- For a stable system, the natural response and the zero-input response 
**die out exponentially**

- Thus, the natural response and the zero-input repsonse are called **transient** response
    - they fadea away, usually quickly

- Input signals last indefinitely => the forced response is a **permanent response**

### Transient and permanent regime

Operating regimes:

- When the input signal is first applied, and the transient response is present, the system is in **transient regime**

- When the transient response has died out, the system remains in **permanent regime**, where only the input signal determines the output

Example: apply a infinitely long sinusoidal, starting from $n=0$

  - the output has some irregularities at the beginning, due to the natural responses
  
  - afterwards, it becomes perfectly regular



