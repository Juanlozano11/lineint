% Define the function
g = @(s) exp(-(s).^2);

% Define the interval [a, b]
a = 0;
b = 1;

% Prompt the user for the number of subdivisions
n = input('Enter the number of subdivisions (n): ');

% Compute the integral approximation using the trap function
result = trapezoid(g, a, b, n);

% Display the result
fprintf('The approximation using the Trapezoidal rule is: %f\n', result);