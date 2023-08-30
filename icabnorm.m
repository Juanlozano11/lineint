function [a_normalized, b_normalized] = icabnorm(a, b)
    % This function creates normalized values of 'a' and 'b' that satisfy the IC a^2 + b^2 = 1
    % This method uses normalization
    
    % Calculate the normalization factor 'k' for each element
    k = sqrt(1 ./ (a.^2 + b.^2));
    
    % Normalize a and b using the element-wise multiplication
    a_normalized = a .* k;
    b_normalized = b .* k;
end