function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); 
h = X * theta;
g = sigmoid(h);

theta(1) = 0;
firstPart = (-y)' * log(g);
secondPart = (1 - y)' * log(1 - g);
p = lambda * (theta' * theta) / (2*m);

J = (1/m) * (firstPart - secondPart) + p;

mask = ones(size(theta));
mask(1) = 0;

grad = (1/m) * (X' * (g - y)) + ((lambda/m)*(theta .* mask));

%J

end
