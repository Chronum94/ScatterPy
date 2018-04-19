function [Nz] = N_n(order, k, sidelen, res)
% This function assumes normal incidence with respect to the cylinder axis,
% thus, a few terms go to 0, and a few squares a perfect. Bohren and
% Huffman, pg 195.

if nargin == 3
    x = linspace(-sidelen/2, sidelen/2, 100);
else
    x = linspace(-sidelen/2, sidelen/2, res);
end
[xx, yy] = meshgrid(x, x);
r = hypot(xx, yy);
phi = atan2(xx, yy);
Nz = k.*jv(order, r) .* exp(1j*order*phi);
end