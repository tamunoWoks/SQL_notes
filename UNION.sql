-- UNION clause

-- In SQL, the UNION operator is used to combine the result sets of two or more SELECT queries. 
-- It removes duplicate rows between the result sets unless UNION ALL is used, which includes duplicates.

-- SYNTAX
SELECT column1, column2, ...
FROM table1
UNION
SELECT column1, column2, ...
FROM table2;
