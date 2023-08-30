function s = riemann(g, a, b, n)
    % This function returns the right-hand Riemann sum approximation of the integral
    % of the function g over the interval [a, b] using n subdivisions.

    % Compute the width of each subinterval
    delta_x = (b - a) / n;

    % Evaluate the function at the right endpoints
    x = a + delta_x : delta_x : b;
   
    % Evaluates the function f at each of the right-hand endpoints
    %contained in the array x and stores the resulting values in the array y.
    y = arrayfun(g, x);
   
    % Calculate the Riemann sum
    s = sum(y) * delta_x;
end