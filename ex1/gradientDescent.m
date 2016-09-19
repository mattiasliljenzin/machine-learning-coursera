function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

    m = length(y); % number of training examples
    J_history = zeros(num_iters, 1);
    
    for iter = 1:num_iters

        h = X * theta;
        s = sum(h - y); 
        theta = theta - alpha * 1/m * s;
        
        cost1 = computeCost(X, y, theta);
        J_history(iter) = cost1;
    end
end


