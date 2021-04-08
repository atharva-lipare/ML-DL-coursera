function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

notAdmitRow = find(y == 0);
admitRow = find(y == 1);

plot(X(notAdmitRow, 1), X(notAdmitRow, 2), 'ko', 'MarkerFaceColor', 'y');
plot(X(admitRow, 1), X(admitRow, 2), '+', 'color', 'k');

% =========================================================================



hold off;

end
