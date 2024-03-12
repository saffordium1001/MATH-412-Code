% Define the unit square
unit_square = [0 0; 1 0; 1 1; 0 1; 0 0];

% Define transformation matrices
T1 = [3 0; 0 1];
T2 = [1 0; 0 2];

% Apply transformations
transformed_square1 = unit_square * T1;
transformed_square2 = transformed_square1 * T2;

% Plot original unit square
figure;
fill(unit_square(:,1), unit_square(:,2), 'g');
hold on;

% Plot transformed squares
fill(transformed_square2(:,1), transformed_square2(:,2), 'b', 'FaceAlpha', 0.7, 'LineWidth', 2);

% Connect points of transformed squares
plot([transformed_square2(:,1); transformed_square2(1,1)], [transformed_square2(:,2); transformed_square2(1,2)], 'b-', 'LineWidth', 2);

% Add grid, title, axis labels, and legend
grid on;
title('Transformation of Unit Square');
xlabel('x-axis');
ylabel('y-axis');
legend('Original Unit Square', 'Final Transformed');

% Save figure
saveas(gcf, 'problem_4c.png');
