function index = binary_search(array, target)
    % Initialize search range
    left = 1;
    right = length(array);
    
    % Binary search loop
    while left <= right
        % Calculate midpoint
        mid = floor((left + right) / 2);
        
        % Check if target is found at midpoint
        if array(mid) == target
            index = mid;
            return;
        % If target is less than the midpoint, search the left half
        elseif target < array(mid)
            right = mid - 1;
        % If target is greater than the midpoint, search the right half
        else
            left = mid + 1;
        end
    end
    
    % If target is not found
    index = -1;
end


sorted_array = [1, 3, 5, 7, 9, 11];
target = 7;
index = binary_search(sorted_array, target);
disp(index);
