-- LIKE STATEMENT

-- In SQL, LIKE is used in a WHERE clause to search for a specified pattern in a column. 
-- You typically use it with wildcard characters % and _ to filter rows that match the pattern.

-- % (percent sign) means anything and can represent zero, one, or multiple characters.
-- _ (underscore) represents a single specific character.

-- % Examples
-- Find any value that starts with "A"
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';

-- Finds any value that starts with "R"
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'r%';

-- Finds any value that has "or" in any position:
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%or%';
