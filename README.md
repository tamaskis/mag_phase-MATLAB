# `mag_phase` [![View Magnitude and Phase of a Transfer Function (mag_phase) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/94115-magnitude-and-phase-of-a-transfer-function-mag_phase)

Magnitude and phase of a transfer function (i.e. linear system) at a specific point in the frequency domain.


## Syntax

`[mag,phase] = mag_phase(sys,x)`\
`[mag,phase] = mag_phase(sys,x,units)`


## Description

`[mag,phase] = mag_phase(sys,x)` returns the magnitude, `mag`, and phase, `phase`, of the linear system, `sys`, at a desired location `x` in the frequency domain. If `sys` represents a continuous-time transfer function <img src="https://latex.codecogs.com/svg.latex?\inline&space;G(s)"/>, then `x` corresponds to a point <img src="https://latex.codecogs.com/svg.latex?\inline&space;s"/>. If `sys` represents a discrete-time transfer function <img src="https://latex.codecogs.com/svg.latex?\inline&space;G(z)"/>, then `x` corresponds to a point <img src="https://latex.codecogs.com/svg.latex?\inline&space;z"/>. By default, the phase is returned in units of degrees.

`[mag,phase] = mag_phase(sys,x,units)` does the same as the syntax above, but returns the phase in degrees if `units` is specified as `'deg'`, and in radians if `units` is specified as `'rad'`.


## Examples and Additional Documentation

   - See "EXAMPLES.mlx" or the "Examples" tab on the File Exchange page for examples. 
   - See ["Magnitude_and_Phase_of_a_Linear_System.pdf"](https://tamaskis.github.io/documentation/Magnitude_and_Phase_of_a_Linear_System.pdf) (also included with download) for the technical documentation.
