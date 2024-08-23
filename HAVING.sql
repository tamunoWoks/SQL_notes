-- HAVING CLAUSE

-- The HAVING clause in SQL is used to filter records after an aggregation (like COUNT(), SUM(), AVG(), etc.) has been applied. 
-- It's similar to the WHERE clause, but WHERE filters rows before aggregation, while HAVING filters rows after aggregation.
-- Where is going to filters rows based off columns of data
-- Having is going to filter rows based off aggregated columns when grouped

-- SYNTAX
SELECT column1, column2, aggregate_function(column3)
FROM table_name
WHERE condition
GROUP BY column1, column2
HAVING aggregate_condition;
