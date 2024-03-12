% Define matrix D
D = [0 0; 1 0; 1 4; 4 4; 4 5; 1 5; 1 7; 6 7; 6 8; 0 8; 0 0];

% Define transformation matrix
T = [0.75 0; 0 1];

% Perform matrix multiplication
F = D * T;

% Plot both matrices
figure;
plot(D(:,1), D(:,2), 'bo-', 'LineWidth', 1.5); % Plot D in blue
hold on;
plot(F(:,1), F(:,2), 'ro-', 'LineWidth', 1.5); % Plot F in red
hold off;

% Add legend and title
legend('F', 'Transformed F');
title('Transformation of Matrix D');

% Save plot to file
filename = 'problem_5b.png'; % Change the extension as needed
saveas(gcf, filename);

% Display confirmation message
disp(['Plot saved as: ' filename]);

