% Define vertices of the unit square
unit_square = [0 0; 1 0; 1 1; 0 1; 0 0];

% Define reflection matrix across y-axis
reflection_matrix = [-1 0; 0 1];

% Apply reflection matrix to the unit square
reflected_square = unit_square * reflection_matrix;

% Plot original square
fill(unit_square(:,1), unit_square(:,2), 'g', 'DisplayName', 'Unit Square');
hold on;

% Plot reflected square
fill(reflected_square(:,1), reflected_square(:,2), 'b', 'DisplayName', 'Transformed Square');

% Customize plot
legend('Original Square', 'Reflected Square');
title('Reflection of Unit Square across y-axis');
xlim([-3, 3]);
ylim([-2, 2]);
grid on;

% Save reflection matrix
save('reflection_matrix.mat', 'reflection_matrix');

% Save plot
saveas(gcf, 'reflection_plot.png');

