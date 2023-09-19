# `mag_phase` [![View Magnitude and Phase of a Transfer Function (mag_phase) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/94115-magnitude-and-phase-of-a-transfer-function-mag_phase) [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=tamaskis/mag_phase-MATLAB)

Magnitude and phase of a transfer function (i.e. linear system) at a specific point in the frequency domain.

## Syntax

`[mag,phase] = mag_phase(sys,x)`\
`[mag,phase] = mag_phase(sys,x,units)`

## Inputs

- `sys` (1×1 `tf`, `zpk`, or `ss`): continuous or discrete-time linear system
- `x` (1×1 `complex double`): location in frequency domain
   - <img src="https://latex.codecogs.com/svg.latex?\inline&space;s=x"/> in continuous domain
   - <img src="https://latex.codecogs.com/svg.latex?\inline&space;z=x"/> in discrete domain
- `units` (`char` array): `deg` or `rad`

## Outputs

- `mag` (1×1 `double`): magnitude of transfer function at <img src="https://latex.codecogs.com/svg.latex?\inline&space;s=x"/> or <img src="https://latex.codecogs.com/svg.latex?\inline&space;z=x"/>
- `phase` (1×1 `double`): phase of transfer function at <img src="https://latex.codecogs.com/svg.latex?\inline&space;s=x"/> or <img src="https://latex.codecogs.com/svg.latex?\inline&space;z=x"/>

## Examples and Additional Documentation

   - See "EXAMPLES.mlx" or the "Examples" tab on the File Exchange page for examples. 
   - See ["Magnitude_and_Phase_of_a_Linear_System.pdf"](https://tamaskis.github.io/files/Magnitude_and_Phase_of_a_Linear_System.pdf) (also included with download) for the technical documentation.
