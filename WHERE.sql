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

-- We can use WHERE clause with date value also
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';
-- The default date format in SQL is YYYY-MM-DD
-- There are other date formats as well
