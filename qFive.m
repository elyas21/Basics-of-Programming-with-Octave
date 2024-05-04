function result = factorial_recursive(n)
    % Base case: factorial of 0 is 1
    if n == 0
        result = 1;
    % Recursive case: compute factorial of n using recursion
    else
        result = n * factorial_recursive(n - 1);
    end
end

n = 5;
result = factorial_recursive(n);
disp(result);
