% This creates two grapghs that show an initial condition set * 's'

num_points = 10;
theta = linspace(0, 100, num_points);

% Generate initial values for a and b
[a,b] = icab(theta);

s = linspace (0, 100, num_points);

% Generate the two functions
y1 = @(a) a * s;
y2 = @(b) b * s; 

figure(1)

% Loop for value a 
for i = 1:length(a)
    % Print the current value of a
    fprintf('Current value of a: %f\n', a(i));
    
    % Plot the first function
    plot(s, y1(a(i)), 'ob');
    hold on; 
    
    title('Plot of y1(s) = a * s');  % Set the title of the plot
    xlabel('s');  % Set the x-axis label
    ylabel('y1');  % Set the y-axis label
    legend('Data points');  % Add a legend to the plot
    
    % Wait for user input (press enter to continue)
    if i < length(a)
        input("Press enter for next value of a");
        % Clear the previous plot
        cla;
    end
end

% Prevent the final plot from ending
hold on;

% Loop for value b 
figure (2) 
for i = 1:length(b)
    % Print the current value of b
    fprintf('Current value of b: %f\n', b(i));
    
    % Plot the second function
    plot(s, y2(b(i)), 'or');
    hold on; 
    
    title('Plot of y2(s) = b * s');  % Set the title of the plot
    xlabel('s');  % Set the x-axis label
    ylabel('y2');  % Set the y-axis label
    legend('Data points');  % Add a legend to the plot
    
    % Wait for user input (press enter to continue)
    if i < length(b)
        input("Press enter for next value of b");
        % Clear the previous plot
        cla;
    end
end

% Prevent the final plot from ending
hold on;