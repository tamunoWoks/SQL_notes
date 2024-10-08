-- JOINS

-- In SQL, JOINS are used to combine rows from two or more tables based on a related column between them.
-- They don't necessarily need to have the same name, as long as the data in it are the same and can be used to join the tables together

--SYNTAX
SELECT columns
FROM table1
JOIN table2
ON table1.common_column = table2.common_column;

-- THERE ARE SEVERAL TYPES OF JOINS


--1. INNER JOIN 
-- This returns records that have matching values in both tables.  If there is no match, the rows are excluded from the result.
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
  ON dem.employee.id = sal.employee.id;

-- In INNER JOINS, the INNER can be omitted in the keyword and it will still work:
SELECT *
FROM employee_demographics AS dem
JOIN employee_salary AS sal
  ON dem.employee.id = sal.employee.id;


--2. OUTER JOIN
-- An OUTER JOIN in SQL is used to combine rows from two or more tables based on a related column between them, even if there are no matches in one of the tables. 
-- There are three main types of OUTER JOINs:

-- LEFT OUTER JOIN (LEFT JOIN)
-- As the above title implies, it can be written as LEFT OUTER JOIN or LEFT JOIN
-- Returns all records from the left table and the matched records from the right table. If there is no match, the result is NULL on the side of the right table.
SELECT *
FROM employee_salary AS sal
LEFT JOIN employee_demographic AS dem
  ON sal.employee_id = dem.employee_id;

-- RIGHT OUTER JOIN (RIGHT JOIN)
-- As the above title implies, it can be written as RIGHT OUTER JOIN or RIGHT JOIN
-- Returns all records from the right table and the matched records from the left table. If there is no match, the result is NULL on the side of the left table.
SELECT *
FROM employee_salary AS sal
RIGHT JOIN employee_demographic AS dem
  ON sal.employee_id = dem.employee_id;

-- FULL OUTER JOIN
-- Returns all records when there is a match in either the left or right table. Records that have no match will show NULL for columns from the other table.
SELECT * 
FROM employee_salary AS sal
FULL OUTER JOIN employee_demographic AS dem
  ON sal.employee_id = dem.employee_id;


-- 3. SELF JOIN
-- A SELF JOIN in SQL is a join where a table is joined with itself. This is typically used when you want to compare rows within the same table.
SELECT emp1.employee_is AS emp_super, emp1.first_name as super_first_name, emp1.last_name as super_last_name, emp2.employee_id, emp2.first_name, emp2.last_name
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
  ON emp1.employee_id + 1 = emp2.employee_id;


-- 4. CROSS JOIN
-- In SQL, a CROSS JOIN is a type of join that returns the Cartesian product of two tables. 
-- This means that it combines every row from the first table with every row from the second table. 
-- The result set contains every possible combination of rows from the two tables.
SELECT *
FROM employee_demographics
CROSS JOIN employee_salary;
-- The CROSS JOIN multiplies the number of rows in the first table by the number of rows in the second table, which is why it's also called the Cartesian product.


-- 5. JOINING MULTIPLE TABLES
-- Joining multiple tables is a common operation in SQL when you need to combine data from different tables based on related columns.
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
JOIN parks_departments AS dept
  ON dept.department_id = sal.dept_id;

-- We can operate all types of joins when joining multiple tables
--Example
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
LEFT JOIN parks_departments AS dept
  ON dept.department_id = sal.dept_id;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
RIGHT JOIN parks_departments AS dept
  ON dept.department_id = sal.dept_id;
