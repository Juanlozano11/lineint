% This is a driver function that generates a graph that confirms that a.^2 + b.^ = 1
% For the normalized method

% Define the function handle y
y = @(a_normalized, b_normalized) a_normalized.^2 + b_normalized.^2;

num_points = 100;
theta = linspace(0, 2*pi, num_points); % Update theta range to 0 to 2*pi

% Generate initial values for a and b
[a, b] = icab(theta);

% Generate normalized values for a and b
[a_normalized, b_normalized] = icabnorm(a, b);

% Calculate y using the generated normalized values of a and b
y_values = y(a_normalized, b_normalized);

% Plot the values of y against theta
plot(theta, y_values -1 , 'or');
xlabel('Theta');
ylabel('y = a^2 + b^2');
title('error');


norm(y_values - 1)
max(abs(y_values - 1))