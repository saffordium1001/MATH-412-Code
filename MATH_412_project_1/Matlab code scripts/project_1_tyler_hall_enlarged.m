%{
Project Number: Project 1
Student Names: Erica Cain, Takiya Eastmond, Makayla Greer, Twymun Safford
Class Name: MATH-412
Takes an image and doubles its size.
%}

% Load the original image
originalImage = imread('tyler-hall.jpeg');

% Display the original image
figure;
imshow(originalImage);
title('Original Image');

% Enlarge the image by a factor of two using reflection
enlargedImage = imresize(originalImage, 2, 'bilinear');

% Print the matrix used for the enlargement
disp('Matrix used for enlarging the image:');
disp(enlargedImage);

% Save the enlarged image with the suffix 'x_reflected' added to the title
outputFileName = 'tyler-hall-expanded.jpeg';
imwrite(enlargedImage, outputFileName);
disp(['Enlarged image saved as: ', outputFileName]);

% Save the matrix
matrixFileName = 'enlargement_matrix.mat';
save(matrixFileName, 'enlargedImage');
disp(['Matrix saved as: ', matrixFileName]);
