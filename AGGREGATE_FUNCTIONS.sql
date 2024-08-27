-- AGGREGATE FUNCTIONS

-- Aggregate functions in SQL are used to perform calculations on a set of values and return a single value. 
-- These functions are commonly used with the GROUP BY clause to group rows sharing a property and calculate aggregate values for each group.

--EXAMPLES OF AGGREGATE FUNCTIONS

-- 1. COUNT()
-- Returns the number of rows that match a specified condition.
SELECT COUNT(*) AS total_employees
FROM employee_demographics;

-- 2. SUM()
-- Returns the total sum of a numeric column.
SELECT SUM(salary) AS total_salary
FROM employee_salaries;
