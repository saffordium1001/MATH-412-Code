% Define unit square vertices
unit_square = [0 0; 1 0; 1 1; 0 1; 0 0];

% Shear matrix
shear_matrix = [1 0; 0 2];

% Apply shear transformation
sheared_square = unit_square * shear_matrix;

% Plot unit square
figure;
fill(unit_square(:,1), unit_square(:,2), 'g');
hold on;

% Plot sheared square
fill(sheared_square(:,1), sheared_square(:,2), 'r', 'FaceAlpha', 0.7, 'EdgeColor', 'r', 'LineWidth', 2);

% Connect points of sheared square
plot([sheared_square(1,1) sheared_square(2,1)], [sheared_square(1,2) sheared_square(2,2)], 'r', 'LineWidth', 2);
plot([sheared_square(2,1) sheared_square(3,1)], [sheared_square(2,2) sheared_square(3,2)], 'r', 'LineWidth', 2);
plot([sheared_square(3,1) sheared_square(4,1)], [sheared_square(3,2) sheared_square(4,2)], 'r', 'LineWidth', 2);
plot([sheared_square(4,1) sheared_square(1,1)], [sheared_square(4,2) sheared_square(1,2)], 'r', 'LineWidth', 2);

% Set axis limits and labels
xlim([-5 5]);
ylim([0 4]);
xlabel('x-axis');
ylabel('y-axis');

% Add grid and title
grid on;
title('Unit Square and Its Expanded Transformation');

% Add legend
legend('Unit Square', 'Sheared Square');

% Save figure
saveas(gcf, 'problem_4b.png');
