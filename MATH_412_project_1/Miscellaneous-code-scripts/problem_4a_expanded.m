% Define the unit square
unit_square = [0 0; 1 0; 1 1; 0 1; 0 0];

% Shear matrix
shear_matrix = [3 0; 0 1];

% Apply shear matrix to unit square
sheared_square = unit_square * shear_matrix;

% Plotting the unit square
figure;
fill(unit_square(:,1), unit_square(:,2), 'g');
hold on;

% Plotting the sheared square
fill(sheared_square(:,1), sheared_square(:,2), 'r', 'FaceAlpha', 0.7, 'LineWidth', 2);

% Connecting the points of the sheared square
plot(sheared_square(:,1), sheared_square(:,2), 'r', 'LineWidth', 2);

% Adding grid and labels
grid on;
xlabel('x-axis');
ylabel('y-axis');
xlim([0 5]);
ylim([0 4]);

% Adding a title
title('Unit Square and its Expanded Version');

% Adding legend
legend('Unit Square', 'Expanded Square', 'Location', 'Best');

% Save the figure
saveas(gcf, 'expanded_square_plot.png');
