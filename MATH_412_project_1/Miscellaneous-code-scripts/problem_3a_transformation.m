% Define unit square points
unit_square = [0, 0; 1, 0; 1, 1; 0, 1];

% Define shear matrix
shear_matrix = [1, 1.5; 0, 1];

% Apply shear transformation to unit square
sheared_square = unit_square * shear_matrix;

% Plot the unit square
figure;
fill(unit_square(:, 1), unit_square(:, 2), 'g'); % fill with green color
hold on;

% Plot the sheared square
fill(sheared_square(:, 1), sheared_square(:, 2), 'r', 'FaceAlpha', 0.5, 'LineWidth', 2); % fill with red color, set transparency to 0.5, and use bold lines
grid on;
title('Unit Square and Its Sheared Transformation');
xlabel('y-axis');
ylabel('x-axis');
legend('Unit Square', 'Sheared Square');
axis equal; % Equal aspect ratio
hold off;

% Save the figure
saveas(gcf, 'unit_and_sheared_square.png');
