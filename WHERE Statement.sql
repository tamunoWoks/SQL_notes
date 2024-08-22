-- WHERE CLAUSE

-- The WHERE clause in SQL is used to filter records in a query by specifying a condition that must be met.
-- The WHERE clause can use operators like =, !=, <, >, LIKE, IN, BETWEEN, AND, OR, and NOT to form complex conditions.

--Examples
SELECT *
FROM employee_salary
WHERE salary < 50000;

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_demographics
WHERE gender = 'Female';

SELECT *
FROM employee_demographics
WHERE gender != 'Female';
