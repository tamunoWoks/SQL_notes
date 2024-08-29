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


-- we can also create a stored procedure by right clicking on Stored Procedures and creating one:
USE `parks_and_recreation`;
DROP procedure IF EXISTS `large_salaries3`;
-- it automatically adds the dilimiter for us
DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 60000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
END $$
DELIMITER ;

CALL large_order_totals3();



-- we can also add parameters
USE `parks_and_recreation`;
DROP procedure IF EXISTS `large_salaries3`;
-- it automatically adds the dilimiter for us
DELIMITER $$
CREATE PROCEDURE large_salaries3(employee_id_param INT)
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 60000
    AND employee_id_param = employee_id;
END $$
DELIMITER ;

CALL large_salaries3(1);
