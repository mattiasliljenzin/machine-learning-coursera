function J = testar() 

	data = load('ex1data1.txt');
	X = data(:, 1); y = data(:, 2);
	m = length(y); % number of training examples
	X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
	theta = zeros(2, 1); % initialize fitting parameters

	h = X * theta;
	s = [];

	for i=1:m
	    s = ((X(i) * theta) - y(i));
	end

	sss = sum(h - y); %funkar
	sss
	s
	%theta = theta - alpha * 1/m * ssss;
end

function res = calculate(x,y)
	res = (x*y) / (x^2 + y^2);
end