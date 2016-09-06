function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% data = load('ex1data1.txt');
% X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples

% X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
% theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
% iterations = 1500;
% alpha = 0.01;


% You need to return the following variables correctly 
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


h = X * theta;
sqrErrors = (h - y).^2;

J = 1 / (2*m) * sum(sqrErrors);


% =========================================================================

end
