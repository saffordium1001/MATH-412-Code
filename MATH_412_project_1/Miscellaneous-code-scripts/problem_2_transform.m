% Define unit square points
unit_square = [0, 0; 1, 0; 1, 1; 0, 1];

% Define transformation matrix
T = [-1, 0; 0, 1];

% Apply transformation to unit square
transformed_square = unit_square * T;

% Plot unit square
figure;
hold on;
fill(unit_square(:,1), unit_square(:,2), 'g'); % Plot unit square in green
legend('Unit Square');

% Plot transformed square
fill(transformed_square(:,1), transformed_square(:,2), 'k', 'FaceAlpha', 0.5, 'LineWidth', 2); % Plot transformed square in black with transparency and bold lines
legend('Unit Square', 'Transformed Square');
grid on;
title('Unit Square and Transformed Square');
xlabel('X');
ylabel('Y');
xlim([-2, 2]);
ylim([0, 2]);
ax = gca;
ax.XAxis.LineWidth = 2; % Bold line for x = 0
ax.YAxis.LineWidth = 2; % Bold line for y = 0

% Save the figure
saveas(gcf, 'unit_and_transformed_squares.png');
