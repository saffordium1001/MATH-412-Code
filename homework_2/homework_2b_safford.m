%{
Homework 2 - Problem b
Student Name: Twymun Safford
Class Name: MATH-412
Calculates the grass, shrub, and bare space
ratios for 10 acres of land.
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

% Iterate from 0 to 6 for each year
for n = 0:6
    disp(['Vegetation vector for year: ', num2str(n)]);
    result_matrix = transfer_matrix^n * x_0;
    disp(result_matrix)
    filename = sprintf('vegetation_column_year_%d.mat', n);
    save(filename, 'result_matrix');
end

% Generate log file
logFileName = 'homework_2b_log.txt';
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

