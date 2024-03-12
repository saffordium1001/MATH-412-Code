% Define shear matrix (shearing in the y-direction)
shear_matrix = [1 1; 0 1];

% Define vertices of the unit square
unit_square = [0 0; 1 0; 1 1; 0 1; 0 0];

% Apply shear transformation to the unit square
sheared_square = unit_square * shear_matrix;

% Plot original and sheared squares
figure;
hold on;

% Plot original square in grey
fill(unit_square(:,1), unit_square(:,2), 'k', 'FaceAlpha', 1);

% Plot sheared square in blue with transparency
fill(sheared_square(:,1), sheared_square(:,2), 'b', 'FaceAlpha', 0.5);

hold off;

% Add legend, title, and grid
legend('Original Square', 'Sheared Square');
title('Sheared Unit Square');
grid on;

% Save matrix and plot
save('sheared_square.mat', 'sheared_square');
saveas(gcf, 'sheared_square_plot.png');

