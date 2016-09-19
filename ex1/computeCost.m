function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
sqrError1 = 0;
sqrError2 = 0;
sqrError3 = 0;

for i=1:m
	sqrError1 += ((X(i,2) * theta(1)) - y(i))^2;
	% sqrError2 += ((X(i) * theta(1)) - y(i))^2;
	% sqrError3 += ((X(i) * theta(1)) - y(i)).^2;
end

% sum((X*theta-y).^2)
% sum(sqrError1)
% sum(sqrError2)
% sum(sqrError3)

%sqrError2 = ((X*theta) - y).^2;

J = 1/(2*m)*sum(sqrError1);

% =========================================================================

end
