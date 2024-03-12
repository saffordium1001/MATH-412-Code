% Define matrix D with initial points
D = [0 0; 1 0; 1 4; 4 4; 4 5; 1 5; 1 7; 6 7; 6 8; 0 8; 0 0];

% Define transformation matrix
T = [1 0.25; 0 1];

% Perform matrix multiplication to obtain matrix F
F = D * T;

% Plot both matrices with specified colors
figure;
plot(D(:,1), D(:,2), 'bo-', 'LineWidth', 2); % Plot matrix D in blue
hold on;
plot(F(:,1), F(:,2), 'go-', 'LineWidth', 2); % Plot matrix F in gold
hold off;

% Add legend and title
legend('Matrix D', 'Matrix F');
title('Transformation of Matrix D');

% Save plot to file
saveas(gcf, 'matrix_plot.png');

