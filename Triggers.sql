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
