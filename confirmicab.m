% This is a driver function that generates a graph that confirms that a.^2 + b.^ = 1

% Define the function handle y
y = @(a,b) a.^2 + b.^2;

num_points = 100;
theta = linspace(0, 100, num_points);

% Generate initial values for a and b
[a,b] = icab(theta);

% Calculate y using the generated values of a and b
y_values = y(a, b);
% Plot the values of y against theta
plot(theta, y_values - 1 , 'o');
xlabel('Theta');
ylabel('error');
title('Plot of y = a^2 + b^2');
hold on