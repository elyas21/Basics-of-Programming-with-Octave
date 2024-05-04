function is_palindrome = check_palindrome(str)
    % Convert the string to lowercase and remove non-alphanumeric characters
    cleaned_str = lower(regexprep(str, '[^a-z0-9]', ''));
    
    % Check if the cleaned string is equal to its reverse
    is_palindrome = strcmp(cleaned_str, fliplr(cleaned_str));
end

str = 'A man, a plan, a canal, Panama!';
is_palindrome = check_palindrome(str);
disp(is_palindrome);
