%==========================================================================
%
% mag_phase  Magnitude and phase of a linear system (i.e. transfer 
% function) at a specific point in the frequency domain.
%
%   [mag,phase] = mag_phase(sys,x)
%   [mag,phase] = mag_phase(sys,x,units)
%
% Copyright © 2021 Tamas Kis
% Last Update: 2021-06-14
%
%--------------------------------------------------------------------------
%
% MATLAB Central File Exchange: 
% GitHub: https://github.com/tamaskis/mag_phase-MATLAB
%
% See EXAMPLES.mlx for examples and "DOCUMENTATION.pdf" for additional 
% documentation. Both of these files are included with the download.
%
%--------------------------------------------------------------------------
%
% -------
% INPUTS:
% -------
%   sys     - (tf) continuous- or discrete-time linear system
%   x       - (1×1 complex) location in frequency domain
%               --> s=x in continuous domain
%            	--> z=x in discrete domain
%   units 	- (OPTIONAL) (char) 'deg' or 'rad'
%
% --------
% OUTPUTS:
% --------
%   mag     - (1×1) magnitude of transfer function at s=x or z=x
%   phase   - (1×1) phase of transfer function at s=x or z=x
%               --> [deg] if units = 'deg'
%               --> [rad] if units = 'rad'
%
%==========================================================================
function [mag,phase] = mag_phase(sys,x,units)
    
    % sets units to degrees by default
    if nargin < 3 || isempty(units)
        units = 'deg';
    end
    
    % magnitude
    mag = norm(evalfr(sys,x));
    
    % phase [deg]
    phase = atan2d(imag(evalfr(sys,x)),real(evalfr(sys,x)));
    
    % converts phase to radians if necessary
    if strcmp(units,'rad')
        phase = phase*(pi/180);
    end
    
end