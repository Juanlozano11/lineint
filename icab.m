function [a, b] = icab(theta)
% icab - Generate values of a and b such that a^2 + b^2 = 1
%
%   [a, b] = icab(theta) generates values of a and b based on the given theta.
%   Theta is an array of angles for which the values of a and b will be computed.

a = cos(theta);
b = sin(theta);

end

