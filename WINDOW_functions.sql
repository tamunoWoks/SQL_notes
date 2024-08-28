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
-- Used with window functions to define how the window function should operate over a specific subset of the data.
SELECT dem.employee_id, dem.first_name, gender, salary,
AVG(salary) OVER()
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
-- We can add any columns and it works. 
-- We could get this exact same output with a subquery in the select statement, but window functions have a lot more functionality.


-- PARTITION BY()
-- Used in conjunction with window functions to divide the result set into partitions or groups.
-- if we use partition it's kind of like the group by except it doesn't roll up 


SELECT dem.employee_id, dem.first_name, gender, salary,
AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

-- If we wanted to see what the salaries were for genders we could do that by using sum.
-- Also we could use order by to get a rolling total

SELECT dem.employee_id, dem.first_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY employee_id)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;


-- ROW_NUMBER()
-- Assigns a unique sequential integer to rows within a partition of a result set.

SELECT dem.employee_id, dem.first_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

-- let's  try ordering by salary so we can see the order of highest paid employees by gender
SELECT dem.employee_id, dem.first_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary desc)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;


-- RANK()
-- Rows with equal values receive the same rank, and the next rank is incremented by the number of rows with the previous rank.
SELECT dem.employee_id, dem.first_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary desc) row_num,
Rank() OVER(PARTITION BY gender ORDER BY salary desc) rank_1 
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
-- Rank repeats on tom ad jerry at 5, but then skips 6 to go to 7 -- this goes based off positional rank
