% Define the vertices of the unit square
unit_square = [0 0; 1 0; 1 1; 0 1; 0 0];

% Define the reflection matrix across the x-axis
reflection_matrix = [1 0; 0 -1];

% Apply the reflection matrix to the vertices of the unit square
reflected_square = unit_square * reflection_matrix;

% Plot the original square (grey) and the reflected square (blue)
figure;
fill(unit_square(:,1), unit_square(:,2), 'g', 'DisplayName', 'Unit Square');
hold on;
fill(reflected_square(:,1), reflected_square(:,2), 'b', 'DisplayName', 'Transformed Square');
hold off;

% Add legend, title, and grid
legend('Original Square', 'Reflected Square');
title('Reflection of Unit Square Across X-Axis');
% Set plot limits
xlim([0, 3]);
ylim([-2, 2]);
grid on;

% Save the reflection matrix and the plot
save('reflection_matrix.mat', 'reflection_matrix');
saveas(gcf, 'reflection_plot.png');

