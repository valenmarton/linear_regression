function [theta, Js] = GradientDescent(X, y, theta, alpha, iterations) % To find a local minimum of a function
   
    % Declare Variables
    m = length(y);
    Js = zeros(iterations, 1);
    
    for i = 1 : iterations
        h = X * theta; % hypothesis
        t1 = theta(1) - (alpha * (1 / m) * sum(h - y));
        t2 = theta(2) - (alpha * (1 / m) * sum((h - y) .* X(:, 2)));
        theta(1) = t1;
        theta(2) = t2;
        
        Js(i) = ComputeCost(X, y, theta);
    end
end