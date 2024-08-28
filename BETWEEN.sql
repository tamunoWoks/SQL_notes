-- BETWEEN CLAUSE

-- The BETWEEN operator in SQL is used to filter the result set within a certain range. 
-- The range can be numeric, text, or date values. 
-- The BETWEEN operator includes the endpoints of the range.

-- SYNTAX
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;


-- EXAMPLES
-- 1. Numeric range:
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Salary BETWEEN 50000 AND 100000;
-- Returns employees whose salary is between $50,000 and $100,000.

-- 2. Date Range:
SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE OrderDate BETWEEN '2024-01-01' AND '2024-06-30';
-- Returns orders placed between January 1, 2024, and June 30, 2024.

-- 3. Text range:
SELECT ProductID, ProductName
FROM Products
WHERE ProductName BETWEEN 'A' AND 'C';
-- Returns products whose names start with letters between 'A' and 'C'.
