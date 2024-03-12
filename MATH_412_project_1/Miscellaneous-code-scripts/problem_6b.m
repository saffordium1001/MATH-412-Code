% Define the initial points of matrix D
D = [0 0; 1 0; 2 2; 1 4; 0 4; 0 0];

% Define the transformation matrix
T = [1 1; 0 -1];

% Multiply matrix D by matrix T
D_new = D * T;

% Plot the old matrix
figure;
hold on;
fill(D(:,1), D(:,2), 'r'); % Fill the shape with red color
plot(D(:,1), D(:,2), 'r', 'DisplayName', 'Old Matrix');

% Plot the new matrix
fill(D_new(:,1), D_new(:,2), 'm'); % Fill the shape with purple color
plot(D_new(:,1), D_new(:,2), 'm', 'DisplayName', 'New Matrix');

% Add title and labels
title('Transformation of Matrix D');
xlabel('X-axis');
ylabel('Y-axis');

% Add grid
grid on;

% Add legend
legend('Location', 'best');

% Save the plot to a file
saveas(gcf, 'matrix_transformation_plot.png');
