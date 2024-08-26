-- JOINS

-- In SQL, JOINS are used to combine rows from two or more tables based on a related column between them.
-- They don't necessarily need to have the same name, as long as the data in it are the same and can be used to join the tables together

--SYNTAX
SELECT columns
FROM table1
JOIN table2
ON table1.common_column = table2.common_column;

