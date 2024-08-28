-- WINDOW FUNCTIONS

-- Window functions in SQL are powerful tools that allow you to perform calculations across a set of table rows that are somehow related to the current row. 
-- Unlike aggregate functions, which return a single result for each group, window functions return a result for every row.

-- KEY CONCEPTS OF WINDOW FUNCTIONS
-- Window: The set of rows on which the window function operates. It's defined using the OVER() clause.
-- Partitions: You can divide the rows into partitions, and the window function is applied to each partition separately.
-- Ordering: Within each partition, you can order the rows, and the window function can access data based on this order.


-- EXAMPLE
-- first let's look at group by
SELECT gender, ROUND(AVG(salary),1)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender;
-- now let's try doing something similar with a window function

-- OVER()
SELECT dem.employee_id, dem.first_name, gender, salary,
AVG(salary) OVER()
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
-- We can add any columns and it works. 
-- We could get this exact same output with a subquery in the select statement, but window functions have a lot more functionality.
