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


-- Best practice is to use a delimiter and a Begin and End to really control what's in the stored procedure
-- This way we can have multiple queries in our stored procedure:
DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 60000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
END $$
-- now we change the delimiter back after we use it to make it default again
DELIMITER ;
-- now we can run this stored procedure
CALL large_salaries2();

