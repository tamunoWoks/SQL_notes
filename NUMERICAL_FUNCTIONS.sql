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


-- 4. ROUND(x, d)
-- Rounds a number x to d decimal places.
SELECT ROUND(3.14159, 2) AS RoundedValue;
-- Result: 3.14


-- 5. POWER(x, y)
-- Returns x raised to the power of y.
SELECT POWER(2, 3) AS PowerValue;
-- Result: 8


-- 6. SQRT(x)
-- Returns the square root of x.
SELECT SQRT(16) AS SquareRoot;
-- Result: 4


-- 7. MOD(x, y)
-- Returns the remainder of x divided by y.
SELECT MOD(10, 3) AS ModulusValue;
-- Result: 1


-- 8. EXP(x)
-- Returns e raised to the power of x.
SELECT EXP(1) AS ExponentialValue;
-- Result: 2.718281828459045
