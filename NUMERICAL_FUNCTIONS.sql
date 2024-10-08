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


-- 9. LOG(x)
-- Returns the natural logarithm of x.
SELECT LOG(10) AS NaturalLogarithm;
-- Result: 2.302585092994046


-- 10. LOG10(x)
-- Returns the base-10 logarithm of x.
SELECT LOG10(100) AS Base10Logarithm;
-- Result: 2


-- 11. TRUNCATE(x, d)
-- Truncates x to d decimal places without rounding.
SELECT TRUNCATE(123.45678, 2) AS TruncatedValue;
-- Result: 123.45


-- 12. SIGN(x)
-- Returns the sign of x. It returns -1 if x is negative, 0 if x is zero, and 1 if x is positive.
SELECT SIGN(-7) AS SignValue;
-- Result: -1


-- 13. PI()
-- Returns the value of PI (π).
SELECT PI() AS PiValue;
-- Result: 3.141592653589793


-- 14. SIN(x)
-- Returns the sine of x (where x is in radians).
SELECT SIN(PI() / 2) AS SineValue;
-- Result: 1


-- 15. COS(x)
-- Returns the cosine of x (where x is in radians).
SELECT COS(PI()) AS CosineValue;
-- Result: -1


-- 16. TAN(x)
-- Returns the tangent of x (where x is in radians).
SELECT TAN(PI() / 4) AS TangentValue;
-- Result: 1


-- 17. RADIANS(x)
-- Converts degrees to radians.
SELECT RADIANS(180) AS RadiansValue;
-- Result: 3.141592653589793


-- 18. DEGREES(x)
-- Converts radians to degrees.
SELECT DEGREES(PI()) AS DegreesValue;
-- Result: 180
