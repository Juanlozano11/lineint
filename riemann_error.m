function errors = riemann_error(a, b, max_n)
    % This function returns the error between the actual value of the integral
    % and the Riemann sum approximation for a range of subdivisions up to max_n.

    % Actual value of the integral
    actual_value = (sqrt(pi)/2) * erf(1);

    % Vector to store errors
    errors = zeros(1, max_n);

    % Define the function
    g = @(s) exp(-s.^2);

    % Loop through subdivisions and compute the error
    for n = 1:max_n
        approximation = riemann(g, a, b, n);
        errors(n) = actual_value - approximation;
    end
end