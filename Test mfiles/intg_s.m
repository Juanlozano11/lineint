% This is sort of a driver file
% This file integrates the function g(s) = exp(-(s).^2).
% This will be a Riemann approximation.


% Define the function for which we want to approximate the integral
g = @(s) exp(-(s).^2);

% Define the interval limits
a = 0;
b = 1;

% Define the number of intervals for the Riemann approximation
num_intervals = 10;

% Call the Riemann approximation function and store the result
result = riemann(g, a, b, num_intervals);

% Display the result
fprintf('Riemann approximation of the integral: %f\n', result);
