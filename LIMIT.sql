-- LIMIT CLAUSE

-- In SQL, the LIMIT clause is used to limit the number of rows returned by a query. 
-- It is often useful when you want to retrieve only a specific subset of data from a larger dataset, such as the first 10 rows or 100 rows.

-- SYNTAX
SELECT column1, column2
FROM table_name
LIMIT number_of_rows;


-- EXAMPLE
SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3;
-- This query will return the first 3 rows from the employee_demographic table in by first name in ascending order.


-- Specify the starting place
-- There is an additional paramater in LIMIT which we can access using a comma that specifies the starting place
SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3, 2;
-- This says start at position 3 and take 2 rows after that
