-- SELECT STATEMENT

-- The SELECT statement in SQL is used to retrieve data from one or more tables and what columns you want to in your ouput.
-- We can also select a specific number of columns based on our requirement.

-- BASIC SYNTAX
SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- Selecting all columns:
SELECT * 
FROM parks_and_recreation.employee_demographics;

-- Selecting a specific column:
SELECT first_name
FROM parks_and_recreation.employee_demographics;

-- Selecting multiple specific columns:
SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics;

-- Using calculated fields:
SELECT first_name, last_name, age, age +10
FROM parks_and_recreation.employee_demographics;

-- Math in SQL follows the PEMDAS order of operation 
-- PEMDAS = Parenthesis, Exponent, Multiplication, Division, Addition, Subtraction.
SELECT first_name, last_name, age, (age +10) * 2
FROM parks_and_recreation.employee_demographics;

