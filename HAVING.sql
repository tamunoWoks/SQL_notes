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


-- Examples
-- Filter on the avg age using where
SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender
-- this doesn't work because of order of operations. On the backend Where comes before the group by. So you can't filter on data that hasn't been grouped yet
-- this is why Having was created
