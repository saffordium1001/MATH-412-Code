% Define the vertices of the unit square
unit_square = [0 0; 1 0; 1 1; 0 1; 0 0];

% Create the expansion matrix
expansion_matrix = [1 0; 0 3];

% Apply the expansion matrix to the unit square
expanded_square = unit_square * expansion_matrix;

% Plot the original square and the expanded square
figure;
fill(unit_square(:,1), unit_square(:,2),  'g', 'DisplayName', 'Unit Square');
hold on;
fill(expanded_square(:,1), expanded_square(:,2), 'b', 'FaceAlpha', 0.5, 'DisplayName', 'Transformed Square');
hold off;

% Add legend, title, and grid
legend('Original Square', 'Expanded Square');
title('Expansion of Unit Square');
grid on;

% Save the expansion matrix
save('expansion_matrix.mat', 'expansion_matrix');

% Save the plot
saveas(gcf, 'expansion_plot.png');