% This is g(s) = f(y1(s), y2(s))
% After math manipulation, g(s) = e^(-(s)^2)

num_points = 100;
s = linspace(-2, 2, num_points);

% Generate initial values for a and b
%[a, b] = icab(s);

% Generate the two functions y1(s) and y2(s)

%y1 = @(a) a * s;
%y2 = @(b) b * s;

% as the function does not depends on the initial condition lines 7:14 are as coments. 
% Calculate g(s) = e^(-(s)^2)
g = exp(-(s).^2);

% Plot g(s)
figure;
plot(s, g, 'og');
hold on;

title('Plot of g(s) = e^{-s^2}');  % Set the title of the plot
xlabel('s');  % Set the x-axis label
ylabel('g(s)');  % Set the y-axis label
legend('Data points');  % Add a legend to the plot

% Prevent the plot from ending
hold on;