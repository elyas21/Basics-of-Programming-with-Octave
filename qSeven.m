function [mean_val, median_val, mode_val] = calculate_statistics(dataset)
    % Mean calculation
    mean_val = mean(dataset);
    
    % Median calculation
    median_val = median(dataset);
    
    % Mode calculation
    mode_val = mode(dataset);
end

dataset = [1, 2, 3, 4, 5, 5, 6, 6, 6, 7];
[mean_val, median_val, mode_val] = calculate_statistics(dataset);
disp(['Mean: ', num2str(mean_val)]);
disp(['Median: ', num2str(median_val)]);
disp(['Mode: ', num2str(mode_val)]);
