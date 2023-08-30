function s = trap(g, a, b, n)
    % This function returns the integral approximation of the function g 
    % over the interval [a, b] using n intervals with the Trapezoidal rule.

    % Compute the width of each subinterval
    h = (b - a) / n;
    
    % Initialize result
    s = 0.5 * (g(a) + g(b));

    % Summation for the interior points
    for i = 1:n-1
        s = s + g(a + i * h);
    end

    % Finalize the result
    s = h * s;
end