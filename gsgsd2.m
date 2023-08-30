% This is g(s) = f(y1(s), y2(s))
% After math manipulation, g(s) = e^(-(s)^2)
% gsgsd2 takes values of a, b that are not 0 and 1

num_points = 75;
s = linspace(-2, 2, num_points);

% Calculate g(s) = e^(-(s)^2)
g = exp(-(s).^2);

% Create a 3D function g(s)
g_3d = @(x, y) exp(-x.^2 - y.^2);

% Create a new figure
figure;

% Set the background color (change 'w' to your desired color)
set(gcf, 'Color', 'w'); % 'w' is for white color

% Define the expanded 3D domain as [-2, 2] x [-2, 2]
expanded_range = 2.5; % Define the expanded range
x_domain = linspace(-expanded_range, expanded_range, 100);
y_domain = linspace(-expanded_range, expanded_range, 100);
[x, y] = meshgrid(x_domain, y_domain);

% Calculate the 3D function values
z = g_3d(x, y);

% Plot the 3D function using mesh
mesh(x, y, z, 'EdgeColor', 'none', 'FaceAlpha', 0.7, 'FaceColor', 'interp');
xlabel('x');
ylabel('y');
zlabel('g(s)'); % Change the label for the z-axis here

hold on;

% Plot the diagonal line (red dots) for non-zero a and b
a = 0.5; % Change this value as needed
b = 0.5; % Change this value as needed
diagonal_line = a * s;
plot3(s, diagonal_line, g, 'ro', 'MarkerFaceColor', 'r', 'LineWidth', 0.4);

% Plot the shadow of the line on the x-y plane
plot3(s, diagonal_line, zeros(size(s)), 'ko', 'MarkerSize', 6); 

% Add lighting using 'infinite' style and set the intensity
light = camlight('infinite');
light.Position = [1 1 1]; % Change light direction (optional)
light.Style = 'infiniteheadlight'; % Set lighting style to infinite headlight
light.Intensity = 0.7; % Adjust the lighting intensity (0.7 is just an example)

% Adjust view and layout
view(30, 45); % Rotate to look down a bit more
grid on;

legend('3D Plot', 'Diagonal Line', 'Diagonal Line in x-y Plane', 'Location', 'Best');
title('Combined Plot of g(s)', 'FontSize', 14);

hold off;