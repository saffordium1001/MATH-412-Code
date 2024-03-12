% Define the vertices of the unit square
unit_square = [0 0; 1 0; 1 1; 0 1; 0 0]; 

% Multiply the unit square by the given matrix
transformed_square = unit_square * [1 1; 0 1]; 

% Plot the unit square with fill color green
figure;
fill(unit_square(:,1), unit_square(:,2), 'g');
hold on;

% Plot the transformed square with fill color black and transparency of 0.5
fill(transformed_square(:,1), transformed_square(:,2), 'k', 'FaceAlpha', 0.5);

% Plot the grid
grid on;

% Plot bold lines for x=0 and y=0
line([0 0], [0 3], 'Color', 'k', 'LineWidth', 2); % x=0
line([0 3], [0 0], 'Color', 'k', 'LineWidth', 2); % y=0

% Set x and y limits
xlim([0 3]);
ylim([0 3]);

% Add title and legend
title('Unit Square and Sheared Square');
legend('Unit Square', 'Sheared Square');

% Save the figure
saveas(gcf, 'unit_and_sheared_square.png');

% Show the plot
hold off;
