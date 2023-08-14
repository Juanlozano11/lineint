% This is g(s) = f(y1(s), y2(s))
% After math manipulation, g(s) = e^(-(s)^2)

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

% Define the 3D domain
x_domain = linspace(-2, 2, 100);
y_domain = linspace(-2, 2, 100);
[x, y] = meshgrid(x_domain, y_domain);

% Calculate the 3D function values
z = g_3d(x, y);

% Plot the 3D function using mesh
mesh(x, y, z, 'EdgeColor', 'none', 'FaceAlpha', 0.7, 'FaceColor', 'interp');
xlabel('x');
ylabel('y');
zlabel('g(s)'); % Change the label for the z-axis here

hold on;

% Plot g(s) in 2D with nicer markers and blue color (with thinner line)
plot3(s, zeros(size(s)), g, 'og', 'MarkerFaceColor', 'g', 'LineWidth', 0.5);

% Add lighting using 'infinite' style and set the intensity
light = camlight('infinite');
light.Position = [1 1 1]; % Change light direction (optional)
light.Style = 'infiniteheadlight'; % Set lighting style to infinite headlight
light.Intensity = 0.7; % Adjust the lighting intensity (0.7 is just an example)

% Adjust view and layout
view(45, 45);
grid on;

legend('3D Plot', '2D Plot');
title('Combined Plot of g(s)', 'FontSize', 14);

hold off;
