-- DROP TABLE Statement

-- The DROP TABLE statement in SQL is used to delete an existing table in a database. 
-- When you use this command, the table and all the data it contains are permanently removed, and this action cannot be undone. 
-- It also removes all the indexes, triggers, constraints, and permission specifications associated with the table.

-- Basic Syntax:
DROP TABLE table_name;


-- Example
DROP TABLE Shippers;
-- If you try to drop a table that does not exist, you may encounter an error, depending on the SQL dialect you are using. 
-- To avoid this, you can use the IF EXISTS clause:
DROP TABLE IF EXISTS table_name;
-- Dropping a table with foreign key constraints might require first dropping or altering the dependent foreign keys.


-- MySQL TRUNCATE TABLE
-- The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.
-- Syntax
TRUNCATE TABLE table_name;
