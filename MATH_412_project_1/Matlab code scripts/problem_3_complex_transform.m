% Define the unit square
unit_square = [0 1 1 0 0; 0 0 1 1 0];

% Define the transformation matrix T^{-1}
T_inv = [3 0; 0 2];

% Apply the transformation
transformed_square = T_inv * unit_square;

% Plot the original and transformed squares
figure;
hold on;
plot(unit_square(1,:), unit_square(2,:), 'b', 'LineWidth', 2);
plot(transformed_square(1,:), transformed_square(2,:), 'r--', 'LineWidth', 2);
xlabel('X');
ylabel('Y');
title('Transformation of Unit Square');
legend('Unit Square', 'Transformed Square');
axis equal;
grid on;
hold off;

