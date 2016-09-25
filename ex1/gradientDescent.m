function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

    for iter = 1:num_iters

        theta = theta - alpha * X' * (1/m) * (X * theta - y);
        J_history(iter) = computeCost(X, y, theta);

    end

end


function result = h(x, t0, t1)
  result = t0 + t1 * x;
end