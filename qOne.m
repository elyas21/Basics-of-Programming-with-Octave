function result = matrix_multiply(matrix1, matrix2)
    [rows1, cols1] = size(matrix1);
    [rows2, cols2] = size(matrix2);
    
    % Check if matrices can be multiplied
    if cols1 ~= rows2
        error('Number of columns in matrix1 must equal number of rows in matrix2');
    end
    
    % Initialize result matrix
    result = zeros(rows1, cols2);
    
    % Perform matrix multiplication
    for i = 1:rows1
        for j = 1:cols2
            for k = 1:cols1
                result(i, j) = result(i, j) + matrix1(i, k) * matrix2(k, j);
            end
        end
    end
end

% Example usage:
matrix1 = [1, 2, 3; 4, 5, 6];
matrix2 = [7, 8; 9, 10; 11, 12];
result = matrix_multiply(matrix1, matrix2);
disp(result);
