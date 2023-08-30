% simpsondriver.m

% Define the function
g = @(s) exp(-(s).^2);

% Define the interval [a, b]
a = 0;
b = 1;

% Prompt the user for the number of subdivisions
n = input('Enter the number of subdivisions (n): ');

% Ensure n is even
if mod(n,2) == 1
    fprintf('n should be even for Simpson''s rule. Incrementing n by 1.\n');
    n = n + 1;
end

% Compute the integral approximation using the simpson function
result = simpson(g, a, b, n);

% Display the result
fprintf('The approximation using Simpson''s rule is: %f\n', result);