-- JOINS

-- In SQL, JOINS are used to combine rows from two or more tables based on a related column between them.
-- They don't necessarily need to have the same name, as long as the data in it are the same and can be used to join the tables together

--SYNTAX
SELECT columns
FROM table1
JOIN table2
ON table1.common_column = table2.common_column;

-- There are several types of JOINS


--1. INNER JOIN 
-- This returns records that have matching values in both tables.  If there is no match, the rows are excluded from the result.
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
  ON dem.employee.id = sal.employee.id

-- In INNER JOINS, the INNER can be omitted in the keyword and it will still work:
SELECT *
FROM employee_demographics AS dem
JOIN employee_salary AS sal
  ON dem.employee.id = sal.employee.id
