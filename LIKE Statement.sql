-- LIKE STATEMENT
-- SYNTAX
SELECT column1, column2, ...
FROM table_name
WHERE column_name LIKE pattern;

-- In SQL, LIKE is used in a WHERE clause to search for a specified pattern in a column. 
-- You typically use it with wildcard characters % and _ to filter rows that match the pattern.

-- % (percent sign) means anything and can represent zero, one, or multiple characters.
-- _ (underscore) represents a single specific character.

-- % Wildcard Examples
-- Find any value that starts with "A"
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A%';

-- Finds any value that starts with "R"
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'R%';

-- Finds any value that has "or" in any position:
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%or%';


-- _ Wildcard Examples
-- Match any value that has "A" as the first character and any single character following it
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A_';

-- Match any value with three characters, where the first is "T" and the last is "Z":
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'T_Z';


-- WE can combine both wildcards
-- Match values where the second character is "B":
SELECT *
FROM employee_demographics
WHERE first_name LIKE '_B%';

-- Match any value where the fourth character is "X":
SELECT *
FROM employee_demographics
WHERE first_name LIKE '___X%';

-- Match any value where the second and third characters are digits:
SELECT *
FROM employee_demographics
WHERE birth_date LIKE '_98%';
