function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

test_values = [0.01 0.03 0.1 0.3 1 3 10 30];
min_error = 999999;
for i = 1 : size(test_values, 2)
    for j = 1 : size(test_values, 2)
        tempC = test_values(i);
        tempSigma = test_values(j);
        model = svmTrain(X, y, tempC, @(x1, x2) gaussianKernel(x1, x2, tempSigma));
        predictions = svmPredict(model, Xval);
        temp_error = mean(double(predictions ~= yval));
        if (temp_error < min_error)
            C = tempC;
            sigma = tempSigma;
            min_error = temp_error;
        endif
    endfor
endfor





% =========================================================================

end
