% Define unit square vertices
unit_square = [0, 0; 1, 0; 1, 1; 0, 1; 0, 0];

% Shear matrix
shear_matrix = [1, 1.5; 0, 1];

% Inverse of shear matrix
inverse_shear_matrix = inv(shear_matrix);

% Apply shear transformation
sheared_points = unit_square * shear_matrix;

% Apply inverse shear transformation
inverse_sheared_points = unit_square * inverse_shear_matrix;

% Apply combined transformation
combined_points = unit_square * shear_matrix * inverse_shear_matrix;

% Plot original unit square
figure;
hold on;
fill(unit_square(:, 1), unit_square(:, 2), 'g');
plot(unit_square(:, 1), unit_square(:, 2), 'g', 'LineWidth', 2);

% Plot sheared square
fill(sheared_points(:, 1), sheared_points(:, 2), 'r', 'FaceAlpha', 0.5);
plot(sheared_points(:, 1), sheared_points(:, 2), 'r--', 'LineWidth', 2);

% Plot inverse sheared square
fill(inverse_sheared_points(:, 1), inverse_sheared_points(:, 2), 'y', 'FaceAlpha', 0.5);
plot(inverse_sheared_points(:, 1), inverse_sheared_points(:, 2), 'y-.', 'LineWidth', 2);

% Plot combined transformation square
fill(combined_points(:, 1), combined_points(:, 2), 'b', 'FaceAlpha', 0.5);
plot(combined_points(:, 1), combined_points(:, 2), 'b:', 'LineWidth', 2);

% Add grid and title
grid on;
title('Unit Square Transformation');
xlabel('y-axis');
ylabel('x-axis');


% Save figure
saveas(gcf, 'unit_square_transformation_plot.png');
