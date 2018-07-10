clear; close all; clc;

% read the training data
data = load('examples.txt');

% initialize Matrices and Variables
X = data(:, 1);     % population matrix
y = data(:, 2);     % profit matrix
m = length(y);      % number of training examples (profit)
theta = zeros(2, 1);     % initial weights (parameters)
iterations = 1500;  % Iterations needed for Gradient Descent
alpha = 0.01;       % Learning Rate

% Plot the Data
plot(X, y, 'rx', 'MarkerSize', 10);
title('Training Examples');
xlabel('Population in 10,000');
ylabel('Profit in $10,000');

% Compute the Cost Function
X = [ones(m, 1), data(:, 1)];
J = ComputeCost(X, y, theta);

% Run Gradient Descent
[theta, Js] = GradientDescent(X, y, theta, alpha, iterations);

%plotting linear regression line
hold on;
plot(X(:, 2), X * theta, '-');
legend('Training data', 'Linear regression');
hold off;

% plotting the cost function
% plot(1: iterations, Js, '-b');

% Predicting Profits
fprintf('Prediction for 35000:\t%f\n', ([1, 3.5] * theta) * 10000);
fprintf('Prediction for 70000:\t%f\n', ([1, 7] * theta) * 10000);
