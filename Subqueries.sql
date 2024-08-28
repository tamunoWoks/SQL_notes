-- SUBQUERIES

-- Subqueries in SQL are queries nested inside another query. 
-- They are often used to perform operations that require multiple steps, like filtering, calculating, or combining data across multiple tables or rows. 


-- EXAMPLES

-- 1. Let's look at employees who actually work in the Parks and Rec Department, we could join tables together or we could use a subquery:
SELECT *
FROM employee_demographics
WHERE employee_id IN 
			(SELECT employee_id
				FROM employee_salary
                WHERE dept_id = 1);            
-- We are using that subquery in the where statement and if we just highlight the subquery and run it it's basically a list we are selecting from in the outer query
