-- NUMERICAL FUNCTIONS

-- In SQL, numerical functions are used to perform operations on numeric data types such as INT, FLOAT, DECIMAL, etc. 
-- These functions help with calculations, rounding, absolute value, and more. 

-- Here’s an overview of some commonly used numerical functions in SQL:


-- 1. ABS(x)
-- Returns the absolute value of a number x.
SELECT ABS(-10) AS AbsoluteValue;
-- Result: 10


-- 2. CEILING(x) or CEIL(x)
-- Rounds a number x up to the nearest integer.
SELECT CEILING(4.3) AS CeilingValue;
-- Result: 5


-- 3. FLOOR(x)
-- Rounds a number x down to the nearest integer.
SELECT FLOOR(4.7) AS FloorValue;
-- Result: 4
