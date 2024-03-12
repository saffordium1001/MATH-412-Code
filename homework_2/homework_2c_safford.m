%{
Homework 2 - Problem c
Student Name: Twymun Safford
Class Name: MATH-412
Calculates the characteristic vegetation for an area that has
suffered through a catastrophic wildfire.
%}

% Metadata
studentName = 'Twymun Safford';
className = 'MATH-412';
assignmentName = 'Homework 2 - Problem 1b';

% Generate and save transfer matrix
transfer_matrix = [0.7, 0.05, 0.15; 0.3, 0.75, 0; 0, 0.2, 0.85];
disp(transfer_matrix)
save('transfer_matrix.mat', 'transfer_matrix');

%Generate matrix for initial coverage conditions
x_0 = [10 0 0]';
disp(x_0)

%Display what happens for longer periods of time
disp('After 10 years:');
x_10 = transfer_matrix^10 * x_0
disp(x_10);

disp('After 1000 years:');
x_1000 = transfer_matrix^1000 * x_0
disp(x_1000);

%Display what happens for longer periods of time
disp('After 100000 years:');
x_100000 = transfer_matrix^100000 * x_0
disp(x_100000);

% Find Matrix Q and Diagonal Matrix D
[Q,D] = eig(transfer_matrix)

% Display eigenvalues and eigenvectors
disp('Eigenvalues:');
disp(diag(D)');
disp('Eigenvectors:');
disp(Q);

% Save eigenvalues to mat file
save('eigenvalues.mat', 'D');

% Save eigenvectors to mat file
save('eigenvectors.mat', 'Q');

% Find L (Limit of D^n when n tends to infinity)
L = D^inf
disp("Limit as n approaches infinity for eigenvalues matrix:")
disp(L)
save('L.mat', 'L');

% Calculate Pinf
Pinf = Q*L*inv(Q)
disp("Pinf:")
disp(Pinf)
save('Pinf.mat', 'Pinf');

% Find Pinf * x0
Pinf_x0 = Pinf*x_0
disp("Vegetation after 'infinite' amount of time:")
disp(Pinf_x0)
save('Pinf_x0.mat', 'Pinf_x0');

% Random vector in R^4
y = [6,0,0]'
disp("X_1 - another vector:")
disp(y)
Pinf_y = Pinf*y
disp(Pinf_y)
save('Pinf_y.mat', 'Pinf_y');

% Generate log file
logFileName = 'homework_2c_log.txt';
logFileID = fopen(logFileName, 'a'); % Open log file in append mode

% Get current date and time
currentDateTime = datetime('now', 'Format', 'yyyy-MM-dd HH:mm:ss');

% Write execution log
fprintf(logFileID, 'Last execution: %s\n', char(currentDateTime));
fprintf(logFileID, 'Student Name: %s\n', studentName);
fprintf(logFileID, 'Class Name: %s\n', className);
fprintf(logFileID, 'Assignment Name: %s\n\n', assignmentName);

% Close log file
fclose(logFileID);


