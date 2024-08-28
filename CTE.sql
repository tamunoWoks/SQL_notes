-- CTE (Common Table Expressions)

-- Common Table Expressions (CTEs) are used to define temporary result sets that can be referenced within a SELECT, INSERT, UPDATE, or DELETE statement. 
-- CTEs can be particularly useful for simplifying complex queries, making them more readable and easier to maintain.
-- First, CTEs start using a "With" Keyword. Now we get to name this CTE anything we want
-- Then we say as and within the parenthesis we build our subquery/table we want

-- BASIC CTE SYNTAX
WITH cte_name AS (
    -- Your complex query here
    SELECT column1, column2
    FROM your_table
    WHERE some_condition
)
SELECT * FROM cte_name;


-- EXAMPLES

-- 1. SINGLE CTE
WITH CTE_Example AS 
(
SELECT gender, SUM(salary), MIN(salary), MAX(salary), COUNT(salary), AVG(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
-- directly after using it we can query the CTE
SELECT *
FROM CTE_Example;

-- Now if I come down here, it won't work because it's not using the same syntax
SELECT *
FROM CTE_Example;


-- 2. CALCULATION WITHIN CTE
-- We can now use the columns within this CTE to do calculations on this data that we couldn't have done without it.
WITH CTE_Example AS 
(
SELECT gender, SUM(salary), MIN(salary), MAX(salary), COUNT(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
-- notice here I have to use back ticks to specify the table names  - without them it doesn't work
-- You can use aliases to simplify this
SELECT gender, ROUND(AVG(`SUM(salary)`/`COUNT(salary)`),2)
FROM CTE_Example
GROUP BY gender;


-- 3. USING MULTIPLE CTEs
WITH CTE_Example AS 
(
SELECT employee_id, gender, birth_date
FROM employee_demographics dem
WHERE birth_date > '1985-01-01'
), -- just have to separate by using a comma
CTE_Example2 AS 
(
SELECT employee_id, salary
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
)
-- Now if we change this a bit, we can join these two CTEs together
SELECT *
FROM CTE_Example cte1
LEFT JOIN CTE_Example2 cte2
	ON cte1. employee_id = cte2. employee_id;
