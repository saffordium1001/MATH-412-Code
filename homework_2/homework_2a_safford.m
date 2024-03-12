%{
Homework 2 - Problem 1a
Student Name: Twymun Safford
Class Name: MATH-412
Creates the transfer matrix for a problem.
%}

% Metadata
studentName = 'Twymun Safford';
className = 'MATH-412';
assignmentName = 'Homework 2 - Problem 1a';

% Generate and save transfer matrix
transfer_matrix = [0.7, 0.05, 0.15; 0.3, 0.75, 0; 0, 0.2, 0.85];
save('transfer_matrix.mat', 'transfer_matrix');

% Generate log file
logFileName = 'homework_2a_log.txt';
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