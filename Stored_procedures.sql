-- STORED PROCEDURES

-- Stored procedures in SQL are a powerful tool that allow you to encapsulate SQL code in a reusable, maintainable, and secure way. 
-- They are a collection of SQL statements and logic that are stored on the database server and can be executed by calling the procedure.


-- Creating a Stored Procedure
CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 60000;
-- If we want to call it and use it we can call it by saying:
CALL large_salaries();

