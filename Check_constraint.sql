-- MySQL CHECK Constraint

--The CHECK constraint is used to limit the value range that can be placed in a column.
-- If you define a CHECK constraint on a column it will allow only certain values for this column.
-- If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.


-- CHECK on CREATE TABLE
-- The following SQL creates a CHECK constraint on the "Age" column when the "Persons" table is created. 
-- The CHECK constraint ensures that the age of a person must be 18, or older:
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);
