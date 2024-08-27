-- AGGREGATE FUNCTIONS

-- Aggregate functions in SQL are used to perform calculations on a set of values and return a single value. 
-- These functions are commonly used with the GROUP BY clause to group rows sharing a property and calculate aggregate values for each group.

--EXAMPLES OF AGGREGATE FUNCTIONS

-- 1. COUNT()
-- Returns the number of rows that match a specified condition.
SELECT COUNT(*) AS total_employees
FROM employee_demographics;

-- 2. COUNT(DISTINCT)
-- Counts the distinct (unique) non-null values in a column.
SELECT COUNT(DISTINCT salary) AS salary_groups
FROM employee_salary;

-- 3. SUM()
-- Returns the total sum of a numeric column.
SELECT SUM(salary) AS total_salary
FROM employee_salary;

-- 4. AVG()
-- Returns the average value of a numeric column.
SELECT AVG(salary) AS average_salary
FROM employee_salary;

-- 5. MAX()
-- Returns the maximum value of a column.
SELECT MAX(age) AS maximum_age
FROM employee_demographics;

-- 6. MIN()
-- Returns the minimum value of a column
SELECT MIN(age) AS minimum_age
FROM employee_demographics;

-- 7. VARIANCE()
-- Calculates the variance of the values in a numeric column.
SELECT VARIANCE(age) AS age_variance 
FROM employee_demographics;
