-- CREATE TABLE Statement

-- The CREATE TABLE statement is used to create a new table in a database.

-- Syntax:
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    column3 datatype constraints,
    ...
);


-- Example:
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    BirthDate DATE,
    HireDate DATE,
    Salary DECIMAL(10, 2) NOT NULL
);


-- Create Table Using Another Table:
-- A copy of an existing table can also be created using CREATE TABLE.
-- The new table gets the same column definitions. All columns or specific columns can be selected.
-- If you create a new table using an existing table, the new table will be filled with the existing values from the old table.

-- Example
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers;
