-- CASE STATEMENT

-- A CASE statement in SQL is used to create conditional logic within queries. 
-- It allows you to perform if-else-like operations within your SQL statements.  

-- BASIC SYNTAX
SELECT
    CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        ...
        ELSE default_result
    END AS new_column_name
FROM
    table_name;
