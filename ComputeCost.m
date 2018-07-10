function J = ComputeCost(X, y, theta)
    % Prepare Variables
    m = length(y);
    
    % Calculate Hypothesis (hypothesis formula)
    h = X * theta;
    
    % Calculate Cost (cost function formula)
    J = 1 / (2 * m) * sum((h - y) .^ 2);
end