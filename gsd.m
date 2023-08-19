% Create a 3D function g(s)
g = @(x, y) exp(-x.^2 - y.^2);

% Create a new figure
figure;
clf;

% Create a meshgrid for x and y
[x, y] = meshgrid(linspace(-2, 2, 100), linspace(0, 1, 100));

% Calculate the corresponding z values using the 3D function
z = g(x, y);

% Create a surface plot (surf) of the function
surf(x, y, z);

% Add labels and title
xlabel('x');
ylabel('y');
zlabel('g(s)');
title('3D Plot of g(s) = exp(-x^2 - y^2)');

