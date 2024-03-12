%{
Project Number: Project 1
Student Names: Erica Cain, Takiya Eastmond, Makayla Greer, Twymun Safford
Class Name: MATH-412
Problem 1a expansion
%}
% Define the unit square vertices
unit_square = [0 0; 1 0; 1 1; 0 1; 0 0];

% Define the transformation matrix
transformation_matrix = [3 0; 0 1];

% Apply the transformation to the unit square
transformed_square = unit_square * transformation_matrix;

% Plot the unit square
figure;
hold on;
fill(unit_square(:,1), unit_square(:,2), 'g'); % Unit square in green
fill(transformed_square(:,1), transformed_square(:,2), 'r', 'FaceAlpha', 0.5, 'EdgeColor', 'r', 'LineWidth', 2); % Transformed square in red with transparency and bold lines
grid on;
title('Unit Square and Expanded Square');
xlabel('X');
ylabel('Y');
xlim([0 3]);
ylim([0 5]);

% Plot bold lines for x = 0 and y = 0
plot([0 0], [0 5], 'k', 'LineWidth', 2); % x = 0
plot([0 3], [0 0], 'k', 'LineWidth', 2); % y = 0

% Create legend
legend('Unit Square', 'Expanded Square', 'Location', 'northwest');

% Save the figure
saveas(gcf, 'unit_and_expanded_square.png');

