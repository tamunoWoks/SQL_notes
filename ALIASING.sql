-- ALIASING

-- In SQL, aliasing refers to the process of giving a temporary name to a table or a column
-- It makes the query more readable or handles situations where two or more columns have the same name. 
-- Aliasing is typically done using the 'AS' keyword.

-- SYNTAX
SELECT column_name AS alias_name
FROM table_name;


-- COLUMN ALIASING
-- Column aliasing is used to rename the result set's column for better clarity.
SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender;


-- TABLE ALIASING
-- Table aliasing is useful when you're working with multiple tables in a query (especially in joins).
-- It allows shorten long table names and make the query more concise.
SELECT e_d.gender, e_d.age
FROM employee_demographics AS e_d
GROUP BY e_d.gender;
