function s = simpson(g, a, b, n)
    % This function returns the integral approximation of the function g 
    % over the interval [a, b] using n intervals with Simpson's rule.

    % Ensure that n is even for Simpson's Rule
    if mod(n,2) == 1
        n = n + 1;
    end
    % Compute the width of each subinterval
    h = (b - a) / n;
    % Initialize result
    s = g(a) + g(b);
    % Summation for odd indices
    for i = 1:2:n-1
        s = s + 4 * g(a + i * h);
    end
    % Summation for even indices
    for i = 2:2:n-2
        s = s + 2 * g(a + i * h);
    end
    % Finalize the result
    s = (h / 3) * s;
end