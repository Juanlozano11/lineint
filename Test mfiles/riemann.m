function result = riemann(func, a, b, num_intervals)
    % Riemann approximation of an integral using the midpoint method
    
    % Calculate the width of each interval
    delta_x = (b - a) / num_intervals;
    
    % Initialize the result to zero
    result = 0;
    
    % Loop through each interval
    for i = 1:num_intervals
        % Calculate the midpoint of the current interval
        x_midpoint = a + (i - 0.5) * delta_x;
        
        % Evaluate the function at the midpoint
        f_midpoint = func(x_midpoint);
        
        % Update the result by adding the area of the rectangle for the current interval
        result = result + f_midpoint * delta_x;
    end
end