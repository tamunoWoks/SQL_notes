-- GROUP BY

-- The GROUP BY clause in SQL is used to group rows that have the same values in specified columns into summary rows, like aggregating data.
-- It is commonly used with aggregate functions such as COUNT(), SUM(), MAX(), MIN(), and AVG() to perform operations on each group of rows.

-- SYNTAX
SELECT column_name, aggregate_function(column_name)
FROM table_name
WHERE condition
GROUP BY column_name;

-- Using GROUP BY with aggregate functions
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, MIN(age), MAX(age), COUNT(age),AVG(age)
FROM employee_demographics
GROUP BY gender;
