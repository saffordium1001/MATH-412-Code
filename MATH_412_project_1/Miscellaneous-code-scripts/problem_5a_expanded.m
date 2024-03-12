

% Coordinates of the letter F
x = [0, 1, 1, 4, 4, 1, 1, 6, 6, 0, 0];
y = [0, 0, 4, 4, 5, 5, 7, 7, 8, 8, 0];

% Plot the letter F
plot(x, y, 'b', 'LineWidth', 2);
hold on;
scatter(x, y, 100, 'r', 'filled');
hold off;

% Title for the plot
title('Letter F');

% Adjust axis limits for better visibility
axis([-1 7 -1 9]);

% Optional: Add grid
grid on;

% Save to file
saveas(gcf, 'letter_F_plot.png');
