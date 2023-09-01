% This is the riemann_error driver script

% Define the interval and max subdivisions
a = 0;
b = 1;
max_n = 100;

% Get the errors from the error_riemann function
errors = riemann_error(a, b, max_n);

% Plot the linear scale errors in the first figure
figure;

plot(1:max_n, errors, 'o', 'LineWidth', 2);
xlabel('Number of subdivisions (n)');
ylabel('Error');
title('Error in Riemann Sum Approximation (Linear Scale)');
grid on;

% Plot the log-log scale errors in a new figure
figure;

loglog(1:max_n, errors, 'o', 'LineWidth', 2);
xlabel('Number of subdivisions (n)');
ylabel('Error');
title('Error in Riemann Sum Approximation (Log-Log Scale)');
grid on;