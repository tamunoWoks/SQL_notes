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

-- 1. CATEGORIZING DATA:
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


-- 2. HANDLING NULL VALUES:
SELECT
    employee_id,
    dept_id,
    CASE
        WHEN dept_id IS NULL THEN 'Unknown'
        ELSE 'Legit'
    END AS employee_status
FROM
   employee_salary;


-- 3. COMBINING CASE() WITH AGGREGATIONS:
SELECT
    COUNT(CASE WHEN price > 100 THEN 1 END) AS high_price_count,
    COUNT(CASE WHEN price BETWEEN 50 AND 100 THEN 1 END) AS medium_price_count,
    COUNT(CASE WHEN price < 50 THEN 1 END) AS low_price_count
FROM
    sales;


-- 4: Updating with CASE:
UPDATE employee_salary
SET salary = salary +
    CASE
        WHEN salary > 45000 THEN salary + (salary * 0.05)
        WHEN salary < 45000 THEN salary + (salary * 0.07)
        ELSE 0
    END AS new_salary;


-- OR
SELECT first_name, last_name, salary,
CASE
	WHEN salary > 45000 THEN salary + (salary * 0.05)
    WHEN salary < 45000 THEN salary + (salary * 0.07)
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS Bonus
FROM employee_salary;


-- 5. Conditional Ordering with CASE():
SELECT
    first_name,
    dept_id,
    salary
FROM
    employee_salary
ORDER BY
    CASE
        WHEN dept_id = 2 THEN 'Animal Control'
        WHEN dept_id = 4 THEN 'Healthcare'
	WHEN dept_id = 5 THEN 'Library'
        ELSE 'Unknown'
    END;
