-- ORDER BY

-- ORDER BY is a SQL clause used to sort the result set of a query by one or more columns, either in ascending (ASC) or descending (DESC) order.
-- The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

-- SYNTAX
SELECT column1, column2, ...
FROM table_name
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;


-- Examples
-- ORDER BY one column
SELECT *
FROM customers
ORDER BY first_name;
-- if we use order by it goes a to z by default (ascending order)

-- We can manually change the order by saying desc
SELECT *
FROM employee_demographics
ORDER BY first_name DESC;


-- ORDER BY multiple columns
SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY gender DESC, age DESC


-- Ordering by Non-Selected Columns
SELECT first_name, age
FROM employee_demographics
ORDER BY gender;
-- Even though the gender column is not selected, you can still order the results by it.


-- ORDER BY column position
-- We don't have to spell out the column names. We can actually just use their column position
SELECT *
FROM employee_demographics
ORDER BY 5 DESC, 4 DESC
-- gender is the 5th column while age is the 4th column in the employee_demo graphics table


-- NOTE
-- It is best practice to use the column names as it's more overt.
-- If columns are added or replaced in a table, to ORDER BY column position can mess up the order.
