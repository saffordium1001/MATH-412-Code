%{
Project Number: Project 1
Student Names: Erica Cain, Takiya Eastmond, Makayla Greer, Twymun Safford
Class Name: MATH-412
Reflects an image of Tyler Hall at Morgan State University
across the y-axis
%}

% Load the image
image = imread('tyler-hall.jpeg');
% Display the original image
figure;
imshow(image);
title('Original Image');

% Reflect the image across the y-axis
reflected_image = flip(image, 2);

% Display the reflected image
figure;
imshow(reflected_image);
title('Y-Reflected Image');

% Save the reflected image
imwrite(reflected_image, 'tyler-hall-y-reflected.jpeg');

% Save the matrix used to reflect the image
save('reflection_matrix_y_axis.mat', 'reflected_image');

