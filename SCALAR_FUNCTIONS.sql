-- SCALAR FUNCTIONS

-- Scalar functions in SQL are functions that operate on individual values and return a single value. 

-- EXAMPLES OF SCALAR FUNCTIONS

-- 1. UPPER()
-- Converts a string to uppercase.
SELECT UPPER('hello world') AS UppercaseString;
-- Output: 'HELLO WORLD'


-- 2. LOWER()
-- Converts a string to lowercase.
SELECT LOWER('HELLO WORLD') AS LowercaseString;
-- Output: 'hello world'


-- 3. LEN() / LENGTH()
-- Returns the length of a string. The function name can vary by SQL database.
SELECT LEN('Hello') AS StringLength;  -- SQL Server
-- Output: 5

SELECT LENGTH('Hello') AS StringLength;  -- MySQL, PostgreSQL
-- Output: 5


-- 4. SUBSTRING() / SUBSTR()
-- Extracts a substring from a string.
SELECT SUBSTRING('Hello World', 1, 5) AS Substring;  -- SQL Server
-- Output: 'Hello'

SELECT SUBSTR('Hello World', 1, 5) AS Substring;  -- Oracle, MySQL
-- Output: 'Hello'


-- 5. CONCAT()
-- Concatenates two or more strings.
SELECT CONCAT('Hello', ' ', 'World') AS ConcatenatedString;  -- MySQL, PostgreSQL
-- Output: 'Hello World'

SELECT 'Hello' + ' ' + 'World' AS ConcatenatedString;  -- SQL Server
-- Output: 'Hello World'


-- 6. ROUND()
-- Rounds a numeric value to a specified number of decimal places.
SELECT ROUND(123.4567, 2) AS RoundedNumber;
-- Output: 123.46


-- 7. NOW() / GETDATE()
-- Returns the current date and time.
SELECT NOW() AS CurrentDateTime;  -- PostgreSQL, MySQL
-- Output: '2024-08-26 12:34:56'

SELECT GETDATE() AS CurrentDateTime;  -- SQL Server
-- Output: '2024-08-26 12:34:56'
