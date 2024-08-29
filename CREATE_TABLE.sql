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
