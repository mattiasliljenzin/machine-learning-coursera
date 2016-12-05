function J = testar() 

	%data = load('ex1data1.txt');
	%x = data(:, 1); 
	%y = data(:, 2);

	x = [1; 2; 3; 4; 5; 6; 7];
	y = [2; 4; 6; 8; 10; 12; 14];
	m = length(y); % number of training examples
	theta = 2;
	alpha = 0.01;

	for i=1:10
		h = x * theta;
		cost = 1 / (2*m) * sum(h-y);
		theta = theta - alpha * cost
	end
	
	plot(y, x, 'rx', x * theta, x, '-');
	theta
end

function res = calculate(x,y)
	res = (x*y) / (x^2 + y^2);
end