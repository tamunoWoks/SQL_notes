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

-- we can manually change the order by saying desc
SELECT *
FROM customers
ORDER BY first_name DESC;

