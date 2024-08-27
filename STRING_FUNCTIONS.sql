-- STRING MANIPULATION FUNCTIONS

-- String manipulation functions are essential for processing and transforming text data in SQL. 
-- Here’s a list of common string manipulation functions along with examples for various SQL databases:


-- 1. TRIM()
-- Removes leading and trailing spaces from a string.
SELECT TRIM('   Hello World   ') AS TrimmedString;
-- Output: 'Hello World'


-- 2. LTRIM()
-- Removes leading spaces from a string.
SELECT LTRIM('   Hello World') AS LTrimmedString;
-- Output: 'Hello World'


-- 3. RTRIM()
-- Removes trailing spaces from a string.
SELECT RTRIM('Hello World   ') AS RTrimmedString;
-- Output: 'Hello World'


-- 4. REPLACE()
-- Replaces all occurrences of a specified substring with another substring.
SELECT REPLACE('Hello World', 'World', 'SQL') AS ReplacedString;
-- Output: 'Hello SQL'
