function yt = duffing(t,y)
%DUFFING   Duffing oscillator.
%

%   $Id$

delta = 0;
gamma = 0.75;
omega = 1;

yt = zeros(2,1);

yt(1) = y(2);
yt(2) = y(1)*(1 - y(1)*y(1)) + gamma*cos(omega*t) - delta*y(2);
