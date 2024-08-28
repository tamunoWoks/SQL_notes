-- CASE STATEMENT

-- A CASE statement in SQL is used to create conditional logic within queries. 
-- It allows you to perform if-else-like operations within your SQL statements.  

-- BASIC SYNTAX
SELECT
    CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        ...
        ELSE default_result
    END AS new_column_name
FROM
    table_name;


-- EXAMPLES

-- 1. CATEGORIZING DATA
SELECT
    employee_id,
    first_name, 
    last_name,
    salary,
    CASE
        WHEN salary > 80000 THEN 'High Salary'
        WHEN salary BETWEEN 50000 AND 80000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM
    employee_salary;


-- 2. HANDLING NULL VALUES
SELECT
    employee_id,
    dept_id,
    CASE
        WHEN dept_id IS NULL THEN 'Unknown'
        ELSE 'Legit'
    END AS employee_status
FROM
   employee_salary;
