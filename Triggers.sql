-- TRIGGERS

-- In SQL, triggers are special types of stored procedures that are automatically executed or "triggered" when certain events occur in a database. 
-- Triggers can be set to run before or after an insert, update, or delete operation on a table. 
-- They are commonly used to enforce business rules, maintain audit trails, or synchronize related tables.

-- TYPES OF TRIGGERS
-- 1. Before Triggers: 
-- These triggers execute before the actual operation (INSERT, UPDATE, DELETE) is performed. 
-- They are typically used to validate or modify data before it is committed to the database.
-- Before Insert: Executes before a new record is inserted.
-- Before Update: Executes before an existing record is updated.
-- Before Delete: Executes before a record is deleted.
  
-- 2. After Triggers: 
-- These triggers execute after the operation is performed. 
-- They are often used for logging changes or cascading operations to other tables.
-- After Insert: Executes after a new record is inserted.
-- After Update: Executes after an existing record is updated.
-- After Delete: Executes after a record is deleted.

-- 3. Instead Of Triggers:
-- These triggers override the standard operation. 
-- Instead of performing the INSERT, UPDATE, or DELETE, the trigger performs a custom action. 
-- They are particularly useful in views.


-- CREATING A TRIGGER
USE parks_and_recreation;
DELIMITER $$

CREATE TRIGGER employee_insert2
AFTER INSERT ON employee_salary
FOR EACH ROW
BEGIN
    INSERT INTO employee_demographics (employee_id, first_name, last_name) 
    VALUES (NEW.employee_id,NEW.first_name,NEW.last_name);
END $$
DELIMITER ; 

-- Now that it's created let's test it out.
-- Let's insert a payment into the payments table and see if it updates in the Invoice table.
INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'Jean-Ralphio', 'Saperstein', 'Entertainment 720 CEO', 1000000, NULL);
-- now it was updated in the payments table and the trigger was triggered and update the corresponding values in the invoice table


-- BEST PRACTICES
-- Triggers should not contain complex logic or extensive processing, as this can slow down database operations.
-- Be Careful with Recursive Triggers: Triggers that cause other triggers to fire (recursively) can lead to performance issues and unexpected behavior.
-- Use Triggers Sparingly: Overusing triggers can make the database logic hard to understand and maintain.
