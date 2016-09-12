function [predictedData] = testing(theta0, theta1) 
	
	inputData = [2; 2.5; 3.2; 5; 7.2; 8.5];
	trainingData = [1.75; 2.95; 3.5; 4.75; 6; 9];
	areas = [15; 27; 39; 45; 55; 75];
	predictedData = [];

	for i = 1:length(inputData)
		predictedData(i) = theta0 + theta1 * inputData(i);
	end

	
	plot(areas, trainingData, 'rx', areas, predictedData, '-');
	legend('Training data', 'Predicted data');
	xlabel('kvm'); 
	ylabel('kr');
end