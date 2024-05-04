function sorted_array = bubble_sort(array)
    n = length(array);
    for i = 1:n-1
        for j = 1:n-i
            if array(j) > array(j+1)
                % Swap elements
                temp = array(j);
                array(j) = array(j+1);
                array(j+1) = temp;
            end
        end
    end
    sorted_array = array;
end


array = [5, 3, 8, 2, 1];
sorted_array = bubble_sort(array);
disp(sorted_array);
function sorted_array = merge_sort(array)
    n = length(array);
    if n <= 1
        sorted_array = array;
        return;
    end
    
    % Divide the array into two halves
    mid = floor(n / 2);
    left = merge_sort(array(1:mid));
    right = merge_sort(array(mid+1:end));
    
    % Merge the sorted halves
    sorted_array = merge(left, right);
end

function merged_array = merge(left, right)
    n_left = length(left);
    n_right = length(right);
    merged_array = [];
    i = 1;
    j = 1;
    while i <= n_left && j <= n_right
        if left(i) <= right(j)
            merged_array = [merged_array, left(i)];
            i = i + 1;
        else
            merged_array = [merged_array, right(j)];
            j = j + 1;
        end
    end
    
    % Add remaining elements from left and right arrays
    merged_array = [merged_array, left(i:end), right(j:end)];
end

array = [5, 3, 8, 2, 1];
sorted_array = merge_sort(array);
disp(sorted_array);


function sorted_array = quicksort(array)
    n = length(array);
    if n <= 1
        sorted_array = array;
        return;
    end
    
    % Choose pivot (in this case, the last element)
    pivot = array(end);
    array(end) = [];
    
    % Partition the array
    left = array(array <= pivot);
    right = array(array > pivot);
    
    % Recursively sort left and right subarrays
    sorted_left = quicksort(left);
    sorted_right = quicksort(right);
    
    % Concatenate sorted subarrays with pivot
    sorted_array = [sorted_left, pivot, sorted_right];
end

Example usage:
array = [5, 3, 8, 2, 1];
sorted_array = quicksort(array);
disp(sorted_array);
