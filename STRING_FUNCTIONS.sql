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


-- 5. CHARINDEX() / POSITION()
-- Finds the position of a substring within a string.
SELECT CHARINDEX('World', 'Hello World') AS Position;  -- SQL Server
-- Output: 7

SELECT POSITION('World' IN 'Hello World') AS Position;  -- PostgreSQL
-- Output: 7


-- 6.  SUBSTRING() / SUBSTR()
-- Extracts a substring from a string.
SELECT SUBSTRING('Hello World', 1, 5) AS Substring;  -- SQL Server
-- Output: 'Hello'

SELECT SUBSTR('Hello World', 1, 5) AS Substring;  -- MySQL, Oracle
-- Output: 'Hello'


-- 7. LEFT() / RIGHT()
-- Returns a specified number of characters from the start or end of a string.
SELECT LEFT('Hello World', 5) AS LeftString;
-- Output: 'Hello'

SELECT RIGHT('Hello World', 5) AS RightString;
-- Output: 'World'


-- 8. CONCAT()
-- Concatenates two or more strings.
SELECT CONCAT('Hello', ' ', 'World') AS ConcatenatedString;  -- MySQL, PostgreSQL
-- Output: 'Hello World'

SELECT 'Hello' + ' ' + 'World' AS ConcatenatedString;  -- SQL Server
-- Output: 'Hello World'


-- 9. FORMAT()
-- Formats a string according to a specified format.
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd') AS FormattedDate;  -- SQL Server
-- Output: '2024-08-26'

-- Not available in MySQL, but similar functionality can be achieved with DATE_FORMAT
SELECT DATE_FORMAT(NOW(), '%Y-%m-%d') AS FormattedDate;  -- MySQL
-- Output: '2024-08-26'


-- 10. REVERSE()
-- Reverses the order of characters in a string.
SELECT REVERSE('Hello World') AS ReversedString;
-- Output: 'dlroW olleH'


-- 11. SPLIT_PART()
-- Splits a string into parts based on a delimiter and returns a specific part.
SELECT SPLIT_PART('one,two,three', ',', 2) AS SecondPart;
-- Output: 'two'


-- 12. STRING_AGG()
-- Concatenates values from multiple rows into a single string with a specified separator.
SELECT STRING_AGG(first_name, ', ') AS AllNames
FROM employee_demographics;


-- 13. INSTR()
-- Finds the position of a substring within a string (similar to CHARINDEX).
SELECT INSTR('Hello World', 'World') AS Position;  -- MySQL
-- Output: 7


-- 14. INITCAP()
-- Capitalizes the first letter of each word in a string (Oracle, PostgreSQL).
SELECT INITCAP('hello world from sql') AS CapitalizedString;  -- Oracle, PostgreSQL
-- Output: 'Hello World From Sql'


-- 15. LPAD()
-- Pads the left side of a string with a specified set of characters.
SELECT LPAD('SQL', 5, '*') AS PaddedString;  -- Oracle, MySQL, PostgreSQL
-- Output: '**SQL'


-- 16. RPAD()
-- Pads the right side of a string with a specified set of characters.
SELECT RPAD('SQL', 5, '*') AS PaddedString;  -- Oracle, MySQL, PostgreSQL
-- Output: 'SQL**'
