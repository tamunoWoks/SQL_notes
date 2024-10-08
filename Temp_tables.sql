-- TEMP TABLES

-- Temporary tables in SQL are special types of tables that are created and used to store intermediate results temporarily within a session or a transaction. 
-- They are useful for breaking down complex queries into simpler steps, storing intermediate results, and improving performance in scenarios where data needs to be reused within a session.

-- There's 2 ways to create temp tables:


-- 1. Build it like a real table and insert data into it
CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);
-- if we execute this it gets created and we can query it.
SELECT *
FROM temp_table;
-- If we refresh our tables it isn't there. It isn't an actual table. It's just a table in memory.

-- it's blank now, so we need to insert data into it like this:
INSERT INTO temp_table
VALUES ('Tammy','Wokoma','Alchemy of Souls');
-- now when we run it and execute it again we have our data


-- 2. Build temp table by inserting data into it
CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary > 50000;
-- if we run this query we get our output
SELECT *
FROM salary_over_50k;
