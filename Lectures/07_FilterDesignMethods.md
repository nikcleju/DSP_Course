
# Chapter VII. Filter Design Methods

## FIR filter design

### Filter specifications

- When describing filters, we use the following definitions:

  - Cutoff frequency (one or more)
  - Bands: Pass band, stop band, transition band
  - Passband ripple
  - Stopband attenuation
  - Filter order

- TBD: definitions at whiteboard

### Linear-phase FIR filter design using the window method

- Linear-phase FIR filter design using the window method

  = A filter design method operating in time domain,
  based on truncating the impulse response $h[n]$

- Step 1: Determine the ideal impulse response

  - Consider the ideal transfer function $H_d(\omega)$, in modulus.

    Initially, consider the ideal phase to be 0, $\angle H_d(\omega) = 0$.
    - Example: for a low-pass filter, ideal = rectangle
    - Note: also consider the negative frequency (left-side)

  - Use the inverse IDFT to compute the ideal $h_d[n]$
    - In general the obtained $h_d[n]$ is infinitely long and bilateral
    - For a low-pass filter:
      $$h_i[n]=\frac{\sin(\omega_c n)}{\pi n}$$

### FIR filter design using the window method

- Step 2: Truncate

  - Truncate the impulse response $h_d[n]$, by multiplying with a
    finite-length window function $w[n]$

    The window must be bilateral and symmetrical.

    The window length depends on the desired order.

    $$h_{zp}[n] = h[i] \cdot w[n]$$

- All the consideration related to windowing of a signal apply (see lectures on DFT):

  - Windowing changes signal, every Dirac gets fatter ("spectral leakage"):
    - central lobe
    - secondary lobes
  - Different windows (recatangular, Hamming, Kaiser, etc) = different tradeoff between
    central lobe width and secondary lobes height

### FIR filter design using the window method

- The resulting impulse response is:
  - finite-length (FIR) (good)
  - zero-phase, non-causal ($h[n]$ is bilateral and symmetrical)

- **Causal**: To make the filter causal, delay $h[n]$ such that it starts at 0:

  - This implies a linear phase $\angle H(\omega) = -\frac{M}{2} \omega$
    $$h[n] = h_{zf}[n-M/2]$$
    $$h[n] = 0 \textrm{ for } n \leq 0$$


### FIR filter design using the window method

- Step 3: Compute obtained $H(\omega)$, check specifications

  - The resulting filter might not obey the required specs
  - Scaling: scale the coefficients (e.g. make 2 times larger) to ensure a certain gain, e.g. $$H(0) = 1$$
  - Using the obtained impulse response $h[n]$, compute the obtained transfer function $H(\omega)$ using the DTFT
    $$H(\omega) = \sum_{n=-\infty}^{\infty} h[n] e^{-j \omega n}$$
  - Check $H(\omega)$ against specs, adjust and iterate the design process if needed

- The only parameters available for this method:

  - the length of the window
  - the type of the window

- Specs needed:

  - cutoff frequency $\omega_c$
  - filter order (length)

### Example

- Use the window method to design a low-pass FIR of order 5, with cutoff frequency $\omega$

### FIR filter design using frequency sampling

- FIR filter design using frequency sampling method

  = A filter design method operating in frequency domain,
  ensuring that the DFT of the filter is as desired

- Start from the DFT formula:

  $$H[k] = \sum_{n=0}^{M} h[n] e^{-j 2 \pi \frac{k}{M} n}$$

- Let the desired filter order be M-1, i.e. we want a filter having $h[n]$ with M coefficients

### FIR filter design using frequency sampling

- We impose certain desired values for $H[k]$:
  $$H[k] = H_d[k]$$

- Example: at whiteboard

- Expanding the DFT, we have:

  $$H[k]= \sum_{n=0}^{M} h[n] e^{-j 2 \pi \frac{k}{M} n} = H_d[k]$$

- Viewed with respect to $h[n]$, this is a system of equations with:
  - M unknowns $h[n]$
  - M equations

- Solve and obtain the resulting $h[n]$

### FIR filter design using frequency sampling

- Discussion: TBD
