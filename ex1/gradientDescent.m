function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

disp('')


% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
    
    theta1 = theta;
    theta2 = theta;

    for iter = 1:num_iters

        h = X * theta1;
        s = sum(h - y); 
        theta1 = theta1 - alpha * 1/m * s;
        
        cost1 = computeCost(X, y, theta1);
        J_history(iter) = cost1;
    end


    for iter = 1:num_iters

        s = 0;
        
        for i=1:m
            s += (theta2(1) + theta2(2) * X(i,2)) - y(i);
        end

        theta2 = theta2 - alpha * 1/m * s;
        
        cost2 = computeCost(X, y, theta2);
        J_history(iter) = cost2;

    end
    
    disp('')

    hold on; % keep previous plot visible
    plot(X(:,2), X*theta1, '-')

    hold on; % keep previous plot visible
    plot(X(:,2), 'rx', 'MarkerSize', 10); % Plot the data 

    legend('Training data', 'Linear regression')

end


