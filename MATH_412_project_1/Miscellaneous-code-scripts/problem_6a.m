% Define the matrix D
D = [0 0; 1 0; 2 2; 1 4; 0 4; 0 0];

% Plot the matrix
figure;
fill(D(:,1), D(:,2), 'm'); % 'm' represents purple color
title('Filled Shape Plot');
xlabel('X');
ylabel('Y');
axis equal; % Ensure equal scaling on both axes
grid on; % Add grid

% Save the plot to a file
saveas(gcf, 'filled_shape_plot_with_grid.png');

