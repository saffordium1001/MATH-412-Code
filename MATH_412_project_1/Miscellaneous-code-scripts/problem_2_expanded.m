% Define the unit square
unit_square = [0 0; 1 0; 1 1; 0 1; 0 0];

% Multiply unit square by the 2D matrix ((1 0), (0 3))
transformed_square = unit_square * [1 0; 0 3];

% Plot the unit square
figure;
fill(unit_square(:,1), unit_square(:,2), 'g');
hold on;

% Plot the transformed square
fill(transformed_square(:,1), transformed_square(:,2), 'k', 'FaceAlpha', 0.5, 'EdgeColor', 'k', 'LineWidth', 2);

% Add grid and bold lines
grid on;
set(gca, 'XMinorGrid', 'on', 'YMinorGrid', 'on');
plot([-5 5], [0 0], 'k', 'LineWidth', 2);
plot([0 0], [0 5], 'k', 'LineWidth', 2);

% Set axis limits
xlim([-5 5]);
ylim([0 5]);

% Add title and legend
title('Unit Square and Expanded Square');
legend('Unit Square', 'Expanded Square');

% Save the figure
saveas(gcf, 'unit_and_expanded_square.png');
