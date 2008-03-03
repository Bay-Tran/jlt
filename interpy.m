function y = interpy(x,xd,yd,y0,intmethod)
%INTERPY   Interpolate from data, subtracting a constant value.
%   INTERPY(X,XD,YD,Y0,INTMET) returns Y-Y0 at X, where Y is interpolated
%   from the list (XD,YD) using the interpolation method INTMET.
%   INTMET defualts to 'cubic'.  INTERPY is meant to be used in conjunction
%   with PDFY to obtain the probability distribution function of Y.
%
%   See also PDFY, INTERP1.

%   $Id: interpy.m,v 1.1 2001/07/23 18:09:48 jeanluc Exp $

if nargin < 4
    % Subtracted constant defaults to 0.
    y0 = 0;
end

if nargin < 5
    % Interpolation method.
    intmethod = 'cubic';
end

y = interp1(xd,yd,x,intmethod) - y0;
