%{
Project Number: Project 1
Student Names: Erica Cain, Takiya Eastmond, Makayla Greer, Twymun Safford
Class Name: MATH-412
Problem 1a solution
%}
% Define the unit square vertices
unit_square = [0, 0; 1, 0; 1, 1; 0, 1; 0, 0];

% Define the transformation matrix
T = [1, 0; 0, -1];

% Apply the transformation to the unit square vertices
transformed_square = unit_square * T;

% Plot the original unit square
figure;
fill(unit_square(:,1), unit_square(:,2), 'g', 'DisplayName', 'Unit Square');
hold on;

% Plot the transformed square
fill(transformed_square(:,1), transformed_square(:,2), 'b', 'DisplayName', 'Transformed Square');
hold on;

% Set plot limits
xlim([0, 3]);
ylim([-2, 2]);

% Add grid lines
grid on;

% Add bold lines for x=0 and y=0
ax = gca;
ax.XAxis.LineWidth = 2;
ax.YAxis.LineWidth = 2;

% Add title and legend
title('Unit Square and Its Transformation');
legend('Location', 'northwest');

% Save the figure
saveas(gcf, 'unit_square_transformation.png');

% Display the plot
hold off;
