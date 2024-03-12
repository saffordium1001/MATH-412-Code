%{
Project Number: Project 1
Student Names: Erica Cain, Takiya Eastmond, Makayla Greer, Twymun Safford
Class Name: MATH-412
Takes an image and rotates it 67.36 degrees counterclockwise
%}
% Read the image
image = imread('tyler-hall.jpeg');

% Define rotation angle in degrees
angle = 67.36;

% Perform rotation
rotated_image = imrotate(image, angle, 'bilinear', 'crop');

% Print the rotation matrix
rotation_matrix = [cosd(angle) -sind(angle); sind(angle) cosd(angle)];
disp(rotation_matrix);

% Save the rotated image without clipping
output_filename = 'tyler-hall-rotated.jpeg';
imwrite(rotated_image, output_filename);

% Save the rotation matrix
save('rotation_matrix.mat', 'rotation_matrix');
