-- UNION clause

-- In SQL, the UNION operator is used to combine the result sets of two or more SELECT queries. It allows you to combine the rows of data.
-- UNION is actually shorthand for UNION DISTINCT. It removes duplicate rows between the result sets unless UNION ALL is used, which includes duplicates.

-- SYNTAX
SELECT column1, column2, ...
FROM table1
UNION
SELECT column1, column2, ...
FROM table2;


-- EXAMPLE
SELECT first_name, last_name, 'Old Lady' AS LABEL
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Old Man'
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Highly Paid Employee'
FROM employee_salary
WHERE salary >= 70000
ORDER BY first_name

-- NOTE
-- All SELECT statements must have the same number of columns.
-- The columns in the corresponding positions of the SELECT statements must have similar data types.
-- ORDER BY is applied only at the end of the combined query (after the last SELECT statement).
