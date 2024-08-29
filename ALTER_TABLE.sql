-- ALTER TABLE Statement

-- The ALTER TABLE statement in SQL is used to modify the structure of an existing table. 
-- This can include adding or dropping columns, changing the data type of a column, renaming columns or the table itself, and adding or dropping constraints on an existing table.



-- 1. ADD A COLUMN
-- Syntax:
ALTER TABLE table_name
ADD column_name data_type;

-- Example
ALTER TABLE employees
ADD date_of_birth DATE;



-- 2. MODIFY A COLUMN
-- This can include changing the data type, setting a default value, or altering the column's properties.
-- Syntax:
ALTER TABLE table_name
MODIFY COLUMN column_name new_data_type;

-- Example
ALTER TABLE employees
MODIFY COLUMN salary DECIMAL(10, 2);



-- 3. DROP A COLUMN
-- Syntax:
ALTER TABLE table_name
DROP COLUMN column_name;

-- Example:
ALTER TABLE employees
DROP COLUMN middle_name;
