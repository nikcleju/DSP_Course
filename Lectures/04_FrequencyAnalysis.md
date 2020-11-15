
# Chapter IV: The Fourier Transform and its applications

## IV.1 Vector spaces of signals (crash course)

### Vector spaces

- **Vector space** = a set $V \lbrace v_i \rbrace$ with the following two properties:

    - one element  + another element = still an element of the same space
    
    - a scalar constant $\times$ an element = still an element of the same space
    
- You **can't escape** a vector space by summing or scaling

- The elements of a vector space are called **vectors**

### Examples of vector spaces 

- Geometric spaces are great intuitive examples:

    - a line, or the set $\mathbb{R}$   (one-dimensional)
    - a plane, or the set $\mathbb{C}$   (two-dimensional)
    - 3D space  (three-dimensional)
    - 4D space  (four-dimensional, like the spatio-temporal universe)
    - arrays with N numbers (N-dimensional)   
    - space of continuous signals ($\infty$-dimensional)
   
- The **dimension** of the space = "how many numbers you need in order to specify one element" (informal)

- A "vector" like in maths = a sequence of $N$ numbers = a "vector" like in programming

  - e.g. a point in a plane has two coordinates = a vector of size $N=2$
  - e.g. a point in a 3D-space has three coordinates = a vector of size $N=3$

### Inner product

- Many vector spaces have a fundamental operation: **the (Euclidean) inner product**

    - for **discrete** signals:
        $$\langle \vec{x},\vec{y} \rangle = \sum_i x_i y_i^*$$

    - for **continuous** signals: 
        $$\langle \vec{x},\vec{y} \rangle = \int x(t) y^*(t)$$        

- $^*$ represents **complex conjugate** (has no effect for real signals)

- The result is one number (real or complex)

- Also known as **dot product** or **scalar product** ("produs scalar")

### Inner product

- Each entry in $\vec{x}$ times the complex conjugate of the one in $\vec{y}$, all summed

- For discrete signals, it can be understood as a row $\times$ column multiplication

- Discrete vs continuous: just change sum/integral depending on signal type

### Inner product properties

- Inner product is **linear** in both terms:

    $$\langle \vec{x_1} + \vec{x_2}, \vec{y} \rangle = \langle \vec{x_1}, \vec{y} \rangle + \langle \vec{x_2}, \vec{y} \rangle$$
    $$\langle c \cdot \vec{x}, \vec{y} \rangle = c \cdot \langle \vec{x_1}, \vec{y} \rangle$$
    $$\langle \vec{x}, \vec{y_1} + \vec{y_2} \rangle = \langle \vec{x}, \vec{y_1} \rangle + \langle \vec{x}, \vec{y_2} \rangle$$
    $$\langle \vec{x}, c \cdot \vec{y} \rangle = c^* \cdot \langle \vec{x_1}, \vec{y} \rangle$$
    

### The distance between two vectors

- An inner product induces a **norm** and a **distance** function

- **The (Euclidean) distance** between two vectors = 
    $$d(\vec{x}, \vec{y}) = \sqrt{(x_1-y_1)^2 + (x_2-y_2) ^2 + ... + (x_N-y_N) ^2}$$    

- This distance is the **usual geometric distance** you know from geometry

- It has the exact same intuition like in **normal geometry**:

  - if two vectors have small distance, they are close, they are similar
  - two vectors with large distance are far away, not similar
  - two identical vectors have zero distance

### The norm of a vector

- An inner product induces a **norm** and a **distance** function

- The **norm** (length) of a vector = sqrt(inner product with itself)
$$\|\vec{x}\| = \sqrt{ \langle \vec{x},\vec{x} \rangle } = \sqrt{x_1^2 + x_2 ^2 + ... + x_N ^2}$$

- The **norm** of a vector is the distance from $\vec{x}$ to point $\vec{0}$.

- It has the exact same intuition like in **normal geometry**:
  
  - vector has large norm = has big values, is far from $\vec{0}$
  - vector has small norm = has small values, is close to $\vec{0}$
  - vector has zero norm = it is the vector $\vec{0}$
   
- Norm of a vector = sqrt(the signal **energy**)

### Norm and distance 

- The norm and distance are related

- The distance between $\vec{a}$ and $\vec{b}$ = norm (length) of their difference
$$d(\vec{x}, \vec{y}) = \|\vec{x} - \vec{y}\| = \sqrt{x_1^2 + x_2 ^2 + ... + x_N ^2}$$

- Just like in geometry: distance = length of the difference vector

![Norm and distance in vector spaces](img/NormDist.png){width=42%}

### Angle between vectors

- The **angle** between two vectors is:

  $$\cos(\alpha) = \frac{\langle x,y \rangle}{||x|| \cdot ||y||}$$
  
    - is a value between -1 and 1
    
- **Otrhogonal vectors** = two vectors with $\langle x,y \rangle = 0$
   
   - their angle = $90\deg$
   - in geometric language, the two vectors are **perpendicular**

### Why vector space

- Why are all these useful?

- They are a very general **framework** for different kinds of signals

- We can have **generic** algorithms expressed in terms of distances, norms, angles,
and they will work the same in all vector spaces 
  
  - Example in DEDP class: ML decision with 1, 2, N samples

### Vector spaces in DSP class

We deal mainly with the following vector spaces:

- The vector space of all infinitely-long real signals $x[n]$

- The vector space of all infinitely-long periodic signals $x[n]$ with period N
  
  - for each $N$ we have a different vector space

- The vector space of all finite-length signals $x[n]$ with only $N$ samples

  - for each $N$ we have a different vector space

### Bases

- A **basis** = a set of $N$ linear independent elements from a vector space

  $$B = \lbrace \vec{b}^1, \vec{b}^2 ... \vec{b}^N \rbrace$$

- Any vector in a vector space is expressed as a **linear combination** of the basis elements:

  $$\vec{x} = \alpha_1 \vec{b}^1 + \alpha_2 \vec{b}^2 + ... + \alpha_N \vec{b}^N$$

- The vector is defined by these coefficients:

  $$\vec{x} = (\alpha_1, \alpha_2, ... \alpha_N)$$

### Bases and coordinate systems

- Bases are just like **coordinate systems** in a geometric space

  - any point is expressed w.r.t. a coordinate system
  $$\vec{x} =  x_1 \vec{i} + x_2 \vec{j}$$
  
  - any vector is expressed w.r.t. a basis
  $$\vec{x} = \alpha_1 \vec{b}^1 + \alpha_2 \vec{b}^2 + \dots + \alpha_N \vec{b}^N$$

- $N$ = The number of basis elements = The dimension of the space
  
- Example: any color = RGB values (monitor) or Cyan-Yellow-Magenta values (printer)

### Bases and coordinate systems

![Basis expansion of a vector x](img/Basis.png)
  

### Choice of bases 

- There is typically an infinite choice of bases

- The **canonical basis** = all basis vectors are full of zeros, just with one 1 

- You used it already in an exercise:
  
  - any signal $x[n]$ can be expressed of a sum of $\delta[n-k]$
  $$\lbrace \dots, 3, 6, 2, \dots \rbrace = \dots + 3 \delta[n] + 6 \delta[n-1] + 2 \delta[n-2] + \dots$$
 
  - the canonical basis is $B = \lbrace ..., \delta[n], \delta[n-1], \delta[n-2], \dots \rbrace$

### Orthonormal bases

- An **orthonormal basis** a basis where all elements $\vec{b}^i$ are:
  
  - orthogonal to each other:  $$\langle \vec{b}^i, \vec{b}^j \rangle = 0, \forall i \neq j$$
  
  - **normalized** (their norm = 1): $$||\vec{b}^i|| = \sqrt{\langle \vec{b}^i, \vec{b}^i \rangle} = 1, \forall i$$
  
- Example: the canonical basis $\lbrace \delta[n-k] \rbrace$ is orthonormal:
  
  - $\langle \delta[n-k], \delta[n-l] \rangle = 0, \forall k \neq l$
  - $\langle \delta[n-k], \delta[n-k] \rangle = 1, \forall k$


### Orthonormal bases

- Orthonormal basis = like a coordinate system with orthogonal vectors, of length 1

![Sample bases in a 2D space](img/Bases.png){width=80%}


### Basis expansion of a vector

- Suppose we have an **orthonormal basis** $B = \lbrace \vec{b}^i \rbrace$

- Suppose we have a vector $\vec{x}$

- We can write (expand) $\vec{x}$ as:
  $$\vec{x} = \alpha_1 \vec{b}^1 + \alpha_2 \vec{b}^2 + \dots + \alpha_N \vec{b}^N$$

- Question: how to **find** the coefficients $\alpha_i$?

### Basis expansion of a vector

- If the basis is **orthonormal**, we have:

$$\begin{split}
\langle \vec{x}, \vec{b}^i \rangle =&
\langle \alpha_1 \vec{b}^1 + \alpha_2 \vec{b}^2 + \dots + \alpha_N \vec{b}^N, \vec{b}^i \rangle\\
&= \langle \alpha_1 \vec{b}^1, \vec{b}^i \rangle + \langle \alpha_2 \vec{b}^2, \vec{b}^i \rangle + \dots + \langle \alpha_N \vec{b}^N, \vec{b}^i \rangle\\
&= \alpha_1 \langle \vec{b}^1, \vec{b}^i \rangle + \alpha_2 \langle \vec{b}^2, \vec{b}^i \rangle + \dots + \alpha_N\langle \vec{b}^N, \vec{b}^i \rangle\\
&= \alpha_i
\end{split}$$

### Basis expansion of a vector

- Any vector $\vec{x}$ can be written as:
  $$\vec{x} = \alpha_1 \vec{b}^1 + \alpha_2 \vec{b}^2 + \dots + \alpha_N \vec{b}^N$$
  
- For orthonormal basis: the coefficients $\alpha_i$ are found by inner product
with the corresponding basis vector:
  $$\alpha_i = \langle, \vec{x}, \vec{b}^i \rangle$$


### Why bases

- How does all this talk about bases help us?

- To better understand the Fourier transform

- The signals $\lbrace e^{j \omega n} \rbrace$ form an **orthonormal basis**

- The Fourier Transform of a signal $x$ = finding the coefficients of $\vec{x}$ in this basis

- The Inverse Fourier Transform = expanding $\vec{x}$ with the elements of this basis

- Same **generic** thing every time, only the type of signals differ


## IV.2 The Fourier Transform

### Reminder

- Reminder:

$$e^{jx} = \cos(x) + j \sin(x)$$

$$\cos(x) = \frac{e^{jx} + e^{-jx}}{2}$$

$$\sin(x) = \frac{e^{jx} - e^{-jx}}{2j}$$

$$\sin(x) = \cos(x - \frac{pi}{2})$$

$$\cos(x) = \sin(x + \frac{pi}{2})$$

### Why sinusoidal signals 

- Why are sinusoidal signals $\sin()$ and $\cos()$ so prevalent in signal processing?

- Answer: because they are combinations of an $e^{jx}$ and an $e^{-jx}$

- Why are these $e^{jx}$ so special?

- Answer: because they are **eigen-functions** of linear and time-invariant (LTI) systems

### Response of LTI systems to harmonic signals

- Consider an LTI system with $h[n]$

- Input signal = complex harmonic (exponential) signal
$x[n] = A e^{j \omega_0 n}$

- Output signal = convolution
$$\begin{split}
y[n] &= \sum_{k=-\infty}^\infty h[k] x[n-k]\\
&= \sum_{k=-\infty}^\infty h[k] e^{-j \omega_0 k} A e^{j \omega_0 n}\\
&= H(\omega_0) \cdot x[n]
\end{split}$$

- Output signal = input signal $\times$ a (complex) constant ($H(\omega_0)$)

### Eigen-function

- Complex exponential signals are **eigen-functions** ("funcții proprii")
of LTI systems:

    - output signal = input signal $\times$ a (complex) constant

- We can understand the effect of a LTI system **very easily** if we decompose all signals as a combination of $\lbrace e^{j \omega n} \rbrace$

- Example: RGB color filter (listen)

- All vector space theory becomes useful now:

  - $\lbrace e^{j \omega n} \rbrace$ is an **orthonormal basis**
  - decomposing signals = finding coefficients $\alpha_i$
  - we know how to do this with the inner product

### Fourier Transform of Discrete Signals

- Consider signal $\vec{x} = x[n]$ in the vector space of infinitely-long signals

- The signals $\lbrace e^{j 2 \pi f n} \rbrace, \forall f \in [-\frac{1}{2}, \frac{1}{2}]$ form an **orthonormal basis** in this space

- We can expand (almost) any $\vec{x}$ in this basis

- There are an infinite number of terms, use an integral:

  $$x[n] = \int_{f=-1/2}^{1/2} \underbrace{X(f)}_{\alpha_i} e^{j 2 \pi f n} df$$
  
- The coefficient of every $e^{j 2 \pi f n}$ is found by inner product:

  $$\alpha_i = X(f) = \langle x[n], e^{j 2 \pi f n} \rangle = \sum_n x[n] e^{- j 2 \pi f n}$$
  

### Fourier Transform of Discrete Signals

**Inverse Fourier Transform of Discrete Signals**

  $$x[n] = \int_{f=-1/2}^{1/2} X(f) e^{j 2 \pi f n} df$$

  - Any $x[n]$ can be written as a linear combination of $\lbrace e^{j 2 \pi f n} \rbrace, \forall f \in [-\frac{1}{2}, \frac{1}{2}]$, with some coefficients $X(f)$


**Fourier Transform of Discrete Signals**

  $$X(f) = \langle x[n], e^{j 2 \pi f n} \rangle = \sum_n x[n] e^{- j 2 \pi f n}$$

  - The coefficient $X(f)$ of every $\lbrace e^{j 2 \pi f n} \rbrace$ is found using the inner product $\langle \vec{x}, e^{j 2 \pi f n} \rangle$

### Fourier Transform of Discrete Signals

- We can replace $2 \pi f = \omega$, and $df = \frac{1}{2 \pi} d\omega$

  $$x[n] = \frac{1}{2 \pi}\int_{\omega=-\pi}^{\pi} X(\omega) e^{j \omega n} d\omega$$

  $$X(f) = \langle x[n], e^{j \omega n} \rangle = \sum_n x[n] e^{- j \omega n}$$

  
### Basic properties of Fourier transform

- $X(\omega)$ is a complex function

- It is **periodical** with period $2 \pi$
  $$X(\omega + 2 \pi) = X(\omega)$$

- If the signal $x[n]$ is real, the Fourier transform is **even**
  $$x[n] \in \mathbb{R} \rightarrow X(-\omega) = X^*(\omega)$$

- This means:
    - modulus is even: $|X(\omega)| = |X(-\omega)|$
    - phase is odd: $X(\omega) = - X(-\omega)$
  
### Parseval theorem

- **Parseval theorem**: energy of the signal is the same in time and frequency domains
  $$E = \sum_{-\infty}^\infty |x[n]|^2 = \frac{1}{2 \pi}\int_{-\pi}^\pi |X(\omega)|^2$$
  
- Is true for all orthonormal bases

### Expressing as sum of sinusoids

- Grouping terms with $e^{j \omega n}$ and $e^{j (-\omega) n}$ we get:

  $$\begin{split}
  x[n] &= \frac{1}{2\pi} \int_{\pi}^0 X(\omega) e^{j \omega n} + \frac{1}{2\pi} \int_0^\pi X(\omega) e^{j \omega n} d\omega\\
       &= \frac{1}{2\pi} \int_0^\pi (X(\omega) e^{j \omega n}  + X(\omega) e^{j (-\omega) n} ) d\omega\\
       &= \frac{1}{2\pi} \int_0^\pi 2|X(\omega)| ( e^{j \omega n + \angle{X(\omega)}}  +  e^{- j \omega n - \angle{X(\omega)}} ) d\omega\\
       &= \frac{1}{2\pi} \int_0^\pi 2 |X(\omega)| \cos(\omega n + \angle X(\omega))d\omega
  \end{split}$$

- Any signal $x[n]$ is **a sum of sinusoids with all frequencies** $f \in [0, \frac{1}{2}]$, or $\omega \in [0, \pi]$
    
### Expressing as sum of sinusoids
    
- Any signal $x[n]$ is **a sum of sinusoids with all frequencies** $f \in [0, \frac{1}{2}]$, or $\omega \in [0, \pi]$

  - this is the fundamental practical interpretation of the Fourier transform

- The **modulus** $|X(\omega)|$ is the **amplitude** of the sinusoids ($\times$ 2)
    
    - for $\omega = 0$, $|X(\omega=0)|$ = the DC component
 
- The **phase** $\angle X(\omega)$ gives the initial phase


### Power spectral density

* The average power of a discrete periodic signal
$$P = \frac{1}{N} \sum_{n=0}^{N-1}|x[n]|^2$$

* Is the same in the frequency domain (with proof):
$$P = \sum_{k=0}^{N-1} |c_k|^2$$

* Power spectral density of the signal is
$$S_{xx}[k] = |c_k|^2$$

* Energy over one period is
$$E = \sum_{n-0}^{N-1} |x[n]|^2 = N \sum_{k-0}^{N-1} |c_k|^2$$

  
## IV.3 The Fourier Series



## IV.4 The Discrete Fourier Transform








## IV.2 Frequency analysis of discrete signals

### Fourier series of discrete periodical signals

* A discrete signal of period $N$: $$x[n] = x[n + N]$$

* Can always be decomposed as a **sum of complex exponentials**:
$$x[n] = \sum_{k=0}^{N-1} c_k e^{j 2 \pi k n / N}, n=0,1,... N-1$$

* Finding the coefficients $c_k$:
$$c_k = \frac{1}{N} \sum_{n=0}^{N-1} x[n] e^{- j 2 \pi k n /N}$$


### Comparison with  analog Fourier series

* Compared to analog signals:
    * consider fundamental frequency $f_0 = 1/N$
    * only $N$ terms, with frequencies $k \cdot f_0$:
        * $0, f_0, 2 f_0, ... (N-1) f_0$
    * only $N$ distinct coefficients $c_k$
    * the $N$ coefficients $c_k$ can be chosen like $- \frac{N}{2} < k  \leq \frac{N}{2}$
    => the frequencies span the range $-1/2 ... 1/2$
$$-\frac{1}{2} < f_k \leq \frac{1}{2}$$
$$-\pi < \omega_k \leq \pi$$

    
### Basic properties of Fourier coefficients

1. Signal is **discrete** --> coefficients are **periodic** with period N
$$c_{k+N} = \frac{1}{N} \sum_{n=0}^{N-1} x[n] e^{- j 2 \pi (k+N) n / N} = \frac{1}{N} \sum_{n=0}^{N-1} x[n] e^{- j 2 \pi k n / N}$$

2. If signal is real $x[n] \in \mathbb{R}$, the coefficients are **even**:
    * $c_k^* = c_{-k}$
    * $|c_k| = |c_{-k}|$
    * $\angle c_k = \angle c_{-k}$
    
* Together with periodicity:
    * $|c_k| = |c_{-k}| = |c_{N-k}|$
    * $\angle c_k = - \angle c_{-k} = - \angle c_{N-k}$

### Expressing as sum of sinusoids

* Grouping terms with $c_k$ and $c_{-k}$ we get
$$x[n] = c_0 + 2 \sum_{k=1}^L |c_k| cos(2 \pi \frac{k}{N} + \angle c_k)$$
where $L = N/2$ or $L = (N-1)/2$ depending if $N$ is even or odd

* Signal = DC value + a finite sum of sinusoids with frequencies $k f_0$
    * $|c_k|$ give the amplitudes (x 2)
    * $\angle c_k$ give the phases


### Power spectral density

* The average power of a discrete periodic signal
$$P = \frac{1}{N} \sum_{n=0}^{N-1}|x[n]|^2$$

* Is the same in the frequency domain (with proof):
$$P = \sum_{k=0}^{N-1} |c_k|^2$$

* Power spectral density of the signal is
$$S_{xx}[k] = |c_k|^2$$

* Energy over one period is
$$E = \sum_{n-0}^{N-1} |x[n]|^2 = N \sum_{k-0}^{N-1} |c_k|^2$$


### 2018-2019 Exam

2018-2019 Exam

* Properties of Fourier series: only 1, 2, and 5


### Properties of Fourier series

#### 1. Linearity

If the signal $x_1[n]$ has the Fourier series coefficients $\lbrace c_k^{(1)} \rbrace$, 
and $x_2[n]$ has $\lbrace c_k^{(2)} \rbrace$, then their sum has 

$a \cdot x_1[n] + b\cdot x_2[n] \leftrightarrow \lbrace a \cdot c_k^{(1)} + b\cdot c_k^{(2)} \rbrace$

Proof: via definition

### Properties of Fourier series

####  2. Shifting in time

If $x[n] \leftrightarrow \lbrace c_k \rbrace$, then
$$x[n - n_0] \leftrightarrow \lbrace e^{(-j 2 \pi k n_0 / N)} c_k \rbrace$$

Proof: via definition

* The amplitudes $|c_k|$ are not affected, shifting in time affects only the phase

### Properties of Fourier series

#### 3. Modulation in time
$$e^{j 2 \pi k_0 n / N} \leftrightarrow \lbrace c_{k-k_0} \rbrace$$

#### 4. Complex conjugation

$$x^*[n] \leftrightarrow \lbrace c^*_{-k} \rbrace$$

### Properties of Fourier series

#### 5. Circular convolution

Circular convolution of two signals $\leftrightarrow$ product of coefficients

$$x_1[n] \otimes x_2[n] \leftrightarrow \lbrace N \cdot c_k^{(1)} \cdot c_k^{(2)} \rbrace$$

Circular convolution:

$$x_1[n] \otimes x_2[n] = \sum_{k=0}^{N-1} x_1[k] x_2[(n-k)_N]$$

* takes two periodic signals of period N, result is also periodic with period N
* Example at the whiteboard: how it is computed

### Properties of Fourier series

#### 6. Product in time

Product in time $\leftrightarrow$ circular convolution of Fourier series coefficients
$$x_1[n] \cdot  x_2[n] \leftrightarrow \sum_{m=0}^{N-1} c_m^{(1)} c_{(k-m)_N}^{(2)} = c_k^{(1)} \otimes c_k^{(2)}$$


### Fourier transform of discrete non-periodical signals

* Non-periodical signals contain all frequencies, not only the multiples of $f_0$

* The Fourier transform of a discrete signal:
$$X(\omega) = \sum_{n=-\infty}^\infty x[n] e^{-j \omega n}$$

* The inverse Fourier transform:
$$x[n] = \frac{1}{2 \pi} \int_{-\pi}^\pi X(\omega) e^{j \omega n} d\omega$$

### Comparison

* Compared with the Fourier transform of analog signals
    * sum instead of integral in Fourier transform
    * spectrum is only in range:
    $$\omega \in [-\pi, \pi]$$
    $$f \in [-\frac{1}{2}, \frac{1}{2}]$$

* Compared with the Fourier series of discrete periodical signals
    * general $\omega$ instead of $2 \pi k f_0$
    * spectrum is continuous, not discrete 
    * integral, not sum  in inverse Fourier transform

### Parseval theorem

* **Parseval theorem**: energy of the signal is the same in time and frequency domains
$$E = \sum_{-\infty}^\infty |x[n]|^2 = \frac{1}{2 \pi}\int_{-\pi}^\pi |X(\omega)|^2$$

* Proof: on whiteboard

* The **energy spectral density** gives the energy contained for each frequency
$$S_{xx}(\omega) = |X(\omega)|^2$$

### Basic properties of Fourier transform

* It is **periodical** with period $2 \pi$
$$X(\omega + 2 \pi) = X(\omega)$$

* If the signal $x[n]$ is real, the Fourier transform is **even**
$$x[n] \in \mathbb{R} \rightarrow X^*(\omega) = X(-\omega)$$

* This means
    * modulus is even: $|X(\omega)| = |X(-\omega)|$
    * phase is odd: $X(\omega) = - X(-\omega)$


### Relation between Fourier series and Fourier transform

* If apply Fourier transform to periodical discrete signals, $X(\omega)$ 
contains Diracs
* The Diracs are at frequencies $k f_0$, just like the Fourier series
* The value of an impulse = the coefficient $c_k$ of the Fourier series

* **The Fourier series $\approx$ the Fourier transform of periodic signals**
    * we directly compute the coefficients $c_k$ of the impulses in the spectrum

### Fourier transform and Z transform

* Definition of Fourier transform = Z transform with:
$$z = e^{j \omega}$$

* $e^{j \omega}$ = points on the unit circle

* Fourier transform = Z transform evaluated **on the unit circle**
    * if the unit circle is in the convergence region of Z transform
    * otherwise, equivalence does not hold

* This is true for most usual signals we work with
    * there are exceptions, but they are outside the scope of this class

### 2018-2019 Exam

2018-2019 Exam

* Properties of Fourier transform: only 1, 2, 5, and Parseval theorem

### Properties of Fourier transform

#### 1. Linearity

$$a \cdot x_1[n] + b\cdot x_2[n] \leftrightarrow a \cdot X_1(\omega)+ b\cdot X_2(\omega)$$

Proof: via definition

### Properties of Fourier transform

####  2. Shifting in time

$$x[n - n_0] \leftrightarrow e^{-j \omega n_0} X(\omega)$$

Proof: via definition

* The amplitudes $|X(\omega)|$ is not affected, shifting in time affects only the phase

### Properties of Fourier transform

#### 3. Modulation in time
$$e^{j \omega_0 n} x[n]\leftrightarrow X(\omega - \omega_0)$$

#### 4. Complex conjugation

$$x^*[n] \leftrightarrow X^*(-\omega)$$

### Properties of Fourier transform

#### 5. Convolution

$$x_1[n] * x_2[n] \leftrightarrow X_1(\omega) \cdot X_2(\omega)$$

* Not circular convolution, this is the normal convolution

### Properties of Fourier transform

#### 6. Product in time

Product in time $\leftrightarrow$ convolution of Fourier transforms
$$x_1[n] \cdot  x_2[n] \leftrightarrow \frac{1}{2 \pi} \int_{-\pi}^\pi X_1(\lambda) X_2(\omega - \lambda) d\lambda$$

### Properties of Fourier transform

#### Correlation theorem

$$r_{x_1x_2}[l] \leftrightarrow X_1(\omega) X_2(-\omega)$$

#### Wiener Khinchin theorem

Autocorrelation of a signal $\leftrightarrow$ Power spectral density
$$r_{xx}[l] \leftrightarrow S_{xx}(\omega) = |X(\omega)|^2$$

### Properties of Fourier transform

#### Parseval theorem
Energy is the same when computed in the time or frequency domain

$$\sum|x[n]|^2 = \frac{1}{2 \pi} \int_{-\pi}^{\pi} |X(\omega)|^2 d\omega$$

### Relationship of Fourier transform and Fourier series

* How are they related?
    * Fourier transform: for non-periodical signals
    * Fourier series: for periodical series

* Duality: periodic in time $\leftrightarrow$ discrete in frequency

* If we **periodize** a signal $x[n]$ by repeating with period N:
$$x_N[n] = \sum_{k=-\infty}^{\infty} x[n - k N]$$

* then the Fourier transform w is discrete (made of Diracs):
$$X_N(\omega) = 2 \pi c_k \delta(\omega - k \frac{2 \pi}{N})$$

* The coefficients of the Diracs = exactly the Fourier series coefficients

### Relationship of Fourier transform and Fourier series

* So, Fourier transform can be considered for both periodic and non-periodic signals

* Fourier transform for periodic signals = discrete (sum of Diracs with some coefficients)
    * Diracs at frequencies $f_0 = 1/N$ and its multiplies

* Fourier series for periodic signals = gives the coefficients of the Diracs directly
    * it just omits to write the Diracs explicitly in the equation


### Relation of Fourier transform and Z transform

* Fourier transform: $X(\omega) = \sum_{-\infty}^{\infty}x[n] e^{-j \omega n}$
* Z transform: $X(z) = \sum_{-\infty}^{\infty}x[n] z^{-n}$

* **Fourier tranform = Z transform for $z = e^{j \omega}$**

* $z = e^{j \omega}$ means **evaluated on the unit circle**:
    * $|z| = |e^{j \omega}| = 1 (modulus)$
    * $\angle{z} = \angle{e^{j \omega}} = \omega (phase)$


* Conditions:
    * unit circle must be in the Convergence Region of Z transform
    * some signals can have Fourier transform even though unit circle not in CR

* If signal has pole on unit circle --> Dirac (infinite) in Fourier transform 
    * e.g. $u[n]$
    * some signals are non-convergent on unit circle, but have Fourier transform (e.g. $u[n]$)


### Geometric interpretation of Fourier transform

$$X(z) = C \cdot \frac{(z-z_1)\cdots(z - z_M)}{(z-p_1)\cdots(z - p_N)}$$
$$X(\omega) = C \cdot \frac{(e^{j \omega}-z_1)\cdots(e^{j \omega} - z_M)}{(e^{j \omega}-p_1)\cdots(e^{j \omega} - p_N)}$$

* Modulus:
$$|X(\omega)| = |C| \cdot \frac{|e^{j \omega}-z_1|\cdots|e^{j \omega} - z_M|}{|e^{j \omega}-p_1|\cdots|e^{j \omega} - p_N|}$$

* Phase:
$$\angle{X} = \angle{C} + \angle (e^{j \omega}-z_1) + \cdots + \angle(e^{j \omega} - z_M) - \angle(e^{j \omega}-p_1) - \cdots - \angle(e^{j \omega} - p_N)$$


### Geometric interpretation of Fourier transform

* For complex numbers:
    * modulus of $|a - b|$ = the length of the segment between $a$ and $b$
    * phase of $|a - b|$ = the angle of the segment from $b$ to $a$ (direction is important)


* So, for a point on the unit circle $z = e^{j \omega}$
    * modulus $|X(\omega)|$ is **given by the distances to the zeros and to the poles**
    * phase $\angle{X(\omega)}$ is **given by the angles from the zeros and poles to z**


### Geometric interpretation of Fourier transform

* Consequences:
    * when a **pole** is very close to unit circle --> Fourier transform is **large** at this point
    * when a **zero** is very close to unit circle --> Fourier transform is **small** at this point

* Examples:...

### Geometric interpretation of Fourier transform

* Simple interpretation for modulus $|X(\omega)|$:
    * Z transform $X(z)$ is a *"landscape"*
        * poles = mountains of infinite height
        * zeros = valleys of zero height

    * Fourier transform $X(\omega)$ = "*Walking over this landscape along the unit circle*" --> the heights give the Fourier transform 

    * When close to a mountain --> road is high --> Fourier transform has large amplitude
    * When close to a valley --> road is low --> Fourier transform has small amplitude

* Enough to sketch the Fourier transform for signals with few poles/zeros

### Geometric interpretation of Fourier transform

* Note: $X(z)$ might also have a constant $C$ in front!
    * It does not appear in pole-zero plot
    * The value of $|C|$ and $\angle{C}$ must be determined separately

* This "geometric method" can be applied for both modulus and phase


### Time-frequency duality

* **Duality** properties related to Fourier transform/series

* Discrete $\leftrightarrow$ Periodic
    * **discrete** in time --> **periodic** in frequency
    * **periodic** in time --> **discrete** in frequency

* Continuous $\leftrightarrow$ Non-periodic
    * **continous** in time --> **non-periodic** in frequency
    * **non-periodic** in time --> **continuous** in frequency

### Frequency-based classification of signals

* Based on frequency content:
    * **low-frequency** signals
    * **mid-frequency** signals (band-pass)
    * **high-frequency** signals

* **Band-limited** signals: spectrum is 0 over some frequency $f_{max}$
* **Time-limited** signals: signal value is 0 outside some time interval

* **Bandwitdh** $B$: frequency interval [$F_1$, $F_2$] which contains $95\%$ of energy
    * $B = F_2 - F_1$

* Based on bandwidth $B$:
    * **Narrow-band** signals: $B << $ central frequency $\frac{F_1 + F_2}{2}$
    * **Wide-band** signals: not narrow-band
