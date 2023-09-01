% This is the riemann_error driver script

% Define the interval and max subdivisions
a = 0;
b = 1;
max_n = 100;

% Get the errors from the error_riemann function
errors = riemann_error(a, b, max_n);

% Now, plot the errors in the driver script with the desired appearance
figure;
plot(1:max_n, errors, 'o', 'LineWidth', 2); % Using circles ('bo') for points
xlabel('Number of subdivisions (n)');
ylabel('Error');
title('Error in Riemann Sum Approximation');
grid on;
