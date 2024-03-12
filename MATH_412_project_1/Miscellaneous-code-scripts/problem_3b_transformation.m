% Define the unit square vertices
unit_square = [0, 0; 1, 0; 1, 1; 0, 1; 0, 0];

% Plot the unit square
figure;
fill(unit_square(:,1), unit_square(:,2), 'g');
hold on;
axis equal;
grid on;
title('Transformation of Unit Square');
xlabel('y-axis');
ylabel('x-axis');

% Shear matrix
shear_matrix = [1, 1.5; 0, 1];

% Find the inverse of the shear matrix
inverse_shear_matrix = inv(shear_matrix);
disp('Inverse of Shear Matrix:');
disp(inverse_shear_matrix);

% Apply the inverse shear transformation to the unit square
transformed_square = (unit_square * inverse_shear_matrix);

% Plot the transformed square
fill(transformed_square(:,1), transformed_square(:,2), 'r', 'FaceAlpha', 0.5, 'EdgeColor', 'b', 'LineWidth', 2);

% Add legend
legend('Unit Square', 'Transformed Square');

% Save the figure
saveas(gcf, 'transformed_unit_square.png');
