% Define unit square vertices
unit_square = [0, 0; 1, 0; 1, 1; 0, 1; 0, 0];

% Plot unit square
figure;
fill(unit_square(:,1), unit_square(:,2), 'g');
hold on;

% Define transformation matrix
A = [1, 0; 1, 1];

% Transform unit square
transformed_square = unit_square * A;

% Plot transformed square
fill(transformed_square(:,1), transformed_square(:,2), 'y', 'FaceAlpha', 0.5, 'EdgeColor', 'b', 'LineWidth', 2);

% Set axis limits and properties
xlim([-5, 5]);
ylim([0, 5]);
grid on;
title('Unit Square and Sheared Square');
xlabel('X');
ylabel('Y');
ax = gca;
ax.FontWeight = 'bold';
ax.XAxis.LineWidth = 2;
ax.YAxis.LineWidth = 2;
ax.XRuler.LineWidth = 2;
ax.YRuler.LineWidth = 2;

% Plot bold lines for x=0 and y=0
plot([0, 0], [0, 5], 'k', 'LineWidth', 2);
plot([-5, 5], [0, 0], 'k', 'LineWidth', 2);

% Create legend
legend('Unit Square', 'Sheared Square');

% Save figure
saveas(gcf, 'unit_square_sheared.png');
