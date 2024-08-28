-- CTE (Common Table Expressions)

-- Common Table Expressions (CTEs) are used to define temporary result sets that can be referenced within a SELECT, INSERT, UPDATE, or DELETE statement. 
-- CTEs can be particularly useful for simplifying complex queries, making them more readable and easier to maintain.

-- BASIC CTE SYNTAX
WITH cte_name AS (
    -- Your complex query here
    SELECT column1, column2
    FROM your_table
    WHERE some_condition
)
SELECT * FROM cte_name;
