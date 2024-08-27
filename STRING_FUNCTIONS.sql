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
