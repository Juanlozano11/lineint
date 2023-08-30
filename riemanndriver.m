% This is  riemann driver file

% Define the function
g = @(s) exp(-(s).^2);

% Define the interval [a, b]
a = 0;
b = 1;

% Prompt the user for the number of subdivisions
n = input('Enter the number of subdivisions (n): ');

% Compute the right-hand Riemann sum using the riemann function
result = riemann(g, a, b, n);

% Display the result
fprintf('The right-hand Riemann sum approximation is: %f\n', result);