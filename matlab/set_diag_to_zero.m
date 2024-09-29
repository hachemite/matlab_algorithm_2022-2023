function out = set_diag_to_zero(cube)
% zero_diagonal sets the diagonal elements of a cubic matrix to zero
% Inputs:
%   cube: a cubic matrix of size n x n x n
% Outputs:
%   out: the input cubic matrix with its diagonal elements set to zero

% Get the size of the cubic matrix
n = size(cube, 1);

% Set the diagonal elements to zero
cube(1:n+1:end) = 0;

% Assign the modified cubic matrix to the output variable
out = cube;

end
% Example usage:
% Create a 3x3x3 random cube matrix
cube = rand(3,3,3);

% Call the zero_diagonal function to set the diagonal elements to zero
out = zero_diagonal(cube);

% Display the original and modified cube matrices
disp("Original cube matrix:");
disp(cube);

disp("Modified cube matrix with diagonal elements set to zero:");
disp(out);
