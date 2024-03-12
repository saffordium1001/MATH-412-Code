%{
Project Number: Project 1
Student Names: Erica Cain, Takiya Eastmond, Makayla Greer, Twymun Safford
Class Name: MATH-412
Reflects an image of Tyler Hall at Morgan State University
across the x-axis
%}

% Read the image
image = imread('tyler-hall.jpeg');

% Display original image
figure;
imshow(image);
title('Original Image');

% Reflect the image across the x-axis
reflected_image = flipud(image);

% Display reflected image
figure;
imshow(reflected_image);
title('Reflected Image across X-axis');

% Print the matrix used to reflect the image across the x-axis
disp('Matrix used to reflect the image across the x-axis:');
disp(reflected_image);

% Save the reflected image
imwrite(reflected_image, 'tyler-hall-reflected-x.jpg');

% Save the matrix as well
save('reflected_image_matrix_x.mat', 'reflected_image');
