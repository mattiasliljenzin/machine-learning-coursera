function [predictedData] = testing(theta0, theta1) 
	
	inputData = [2; 2.5; 3.2; 5; 7.2; 8.5];
	trainingData = [1.75; 2.95; 3.5; 4.75; 6; 9];
	areas = [15; 27; 39; 45; 55; 75];
	predictedData = [];
	m = length(inputData);

	for i = 1:m
		h = theta0 + theta1 * inputData(i);
		predictedData(i) = (h - trainingData(i))^2;
	end

	result = (1/2*m)*sum(predictedData);
	
	plot(areas, trainingData, 'rx', areas, predictedData, '-');
	legend('Training data', 'Predicted data');
	xlabel('kvm'); 
	ylabel('kr');
	disp(result);
end