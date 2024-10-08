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
-- Returns the first position of a substring within a string (similar to CHARINDEX).
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


-- 17. TRANSLATE()
-- Replaces each character in a string with another set of characters (character-by-character replacement).
SELECT TRANSLATE('SQL', 'SQ', 'XY') AS TranslatedString;  -- Oracle, PostgreSQL
-- Output: 'XYL'


-- 18. REGEXP_REPLACE()
-- Replaces substrings that match a regular expression pattern with another substring.
SELECT REGEXP_REPLACE('123-456-7890', '\d', '*') AS MaskedNumber;  -- Oracle, PostgreSQL, MySQL
-- Output: '***-***-****'


-- 19. REGEXP_SUBSTR()
-- Extracts a substring from a string using a regular expression pattern.
SELECT REGEXP_SUBSTR('123 Main St, Suite 100', '\d+') AS ExtractedNumber;  -- Oracle, PostgreSQL, MySQL
-- Output: '123'


-- 20. REPEAT()
-- Repeats a string a specified number of times.
SELECT REPEAT('SQL', 3) AS RepeatedString;  -- MySQL, PostgreSQL
-- Output: 'SQLSQLSQL'


-- 21. SPACE()
-- Generates a string of spaces of a specified length.
SELECT 'SQL' + SPACE(3) + 'Server' AS PaddedString;  -- SQL Server
-- Output: 'SQL   Server'


-- 22. ASCII()
-- Returns the ASCII code of the first character of a string.
SELECT ASCII('A') AS AsciiValue;  -- MySQL, SQL Server, Oracle
-- Output: 65


-- 23. CHAR()
-- Converts an ASCII code into a character.
SELECT CHAR(65) AS CharacterValue;  -- MySQL, SQL Server, Oracle
-- Output: 'A'


-- 24. LOCATE()
-- Used to find the position of a substring within a string. 
-- It returns the position (starting from 1) where the substring first occurs in the string. If the substring is not found, it returns 0.
SELECT LOCATE('world', 'Hello world!');
-- Returns 7

-- Usually LOCATE() returns the first instance of the requested query unless a start position is specified
-- Example with start position
SELECT LOCATE('o', 'Hello world!', 5);
-- Returns 8
-- This returns 8 because it starts searching from position 5, and the first 'o' after position 5 is at position 8.
