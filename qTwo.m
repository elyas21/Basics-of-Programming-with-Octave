function root = bisection_method(func, a, b, tol, max_iter)
    % Check if the function has different signs at the interval endpoints
    if func(a) * func(b) >= 0
        error('Function does not have opposite signs at interval endpoints');
    end
    
    % Initialize iteration counter
    iter = 0;
    
    % Bisection loop
    while (b - a) / 2 > tol && iter < max_iter
        % Calculate midpoint
        c = (a + b) / 2;
        
        % Check if midpoint is the root
        if func(c) == 0
            root = c;
            return;
        end
        
        % Update interval
        if func(c) * func(a) < 0
            b = c;
        else
            a = c;
        end
        
        % Increment iteration counter
        iter = iter + 1;
    end
    
    % Approximate root
    root = (a + b) / 2;
end

% Example usage:
% Define the function
func = @(x) x^3 - 2*x - 5;

% Define the interval [a, b] where the root lies
a = 2;
b = 3;

% Set tolerance and maximum number of iterations
tol = 1e-6;
max_iter = 100;

% Find the root using the bisection method
root = bisection_method(func, a, b, tol, max_iter);
disp(root);
