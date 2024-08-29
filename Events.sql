-- EVENTS

-- In SQL, an EVENT is a task that is scheduled to run at a specific time or interval. 
-- It is similar to a scheduled job in other database management systems. 
-- Events can be used to automate repetitive tasks, such as database maintenance, data archiving, or generating reports.


-- Creating an EVENT
DROP EVENT IF EXISTS delete_retirees;
DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO BEGIN
	DELETE
	FROM parks_and_recreation.employee_demographics
    WHERE age >= 60;
END $$

-- if we run it, you can see Jerry is now retired
SELECT * 
FROM parks_and_recreation.employee_demographics;
