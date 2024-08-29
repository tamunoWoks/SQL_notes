-- CREATE DATABASE Statement

-- The CREATE DATABASE statement in MySQL is used to create a new database. 
-- The basic syntax is:
CREATE DATABASE database_name;


-- Example:
-- Suppose you want to create a database named company_db. The SQL statement would be:
CREATE DATABASE company_db;


-- Additional Options:
-- You can also specify character set and collation for the database:
CREATE DATABASE company_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;
-- This example creates the company_db database with the utf8mb4 character set and utf8mb4_unicode_ci collation.
-- Collation in the context of databases refers to a set of rules that determine how data is sorted and compared. 
-- It defines the order in which characters are sorted and the way in which string comparisons are made.
-- In this example, utf8mb4_unicode_ci means the database will use the UTF-8 character set with a case-insensitive, accent-insensitive sorting and comparison rules.
