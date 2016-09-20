function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    A = X * theta - y;
    s = A' * X;
    theta = theta - alpha * (1/m) * s';

    % for i=1:m
    %     s = sum((h(X(i,2), theta(1), theta(2)) + h(X(i,1), theta(1), theta(2)))) - y(i);
    %     t1 = theta(1) - alpha * (1/m) * sum(s);
    %     t2 = theta(2) - alpha * (1/m) * sum(s * X(i,2));
    %     theta(1) = t1;
    %     theta(2) = t2;
    % end

    % A = X * theta - y;  % (m x 1 vector)
    % delta = 1 / m * (A' * X)';  % ' ((n+1) x 1 vector)
    % theta = theta - (alpha * delta);  % ' ((n+1) x 1 vector)


    J_history(iter) = computeCost(X, y, theta);

end

end


function result = h(x, t0, t1)
  result = t0 + t1 * x;
end