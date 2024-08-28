-- DATE FUNCTIONS

-- Date functions in SQL are used to perform operations on date and time values. 
-- Here are some commonly used date functions in SQL:


-- 1. CURRENT_DATE()
--Returns the current date.
SELECT CURRENT_DATE() AS today_date;
-- Output: 2024-08-27

-- 2. CURRENT_TIME()
-- Returns the current time.
SELECT CURRENT_TIME() AS time_now;
-- Output: 14:23:55

-- 3. CURRENT_TIMESTAMP()
-- Returns the current date and time.
SELECT CURRENT_TIMESTAMP() AS timestamp_now;
-- Output: 2024-08-27 14:23:55

-- 4. DATE()
-- Extracts the date part from a datetime expression.
SELECT DATE('2024-08-27 14:23:55') AS date_part;
-- Output: 2024-08-27


-- 5. DATE_ADD()
-- Adds a time/date interval to a date
SELECT DATE_ADD('2024-08-27', INTERVAL 7 DAY) AS next_week;
-- Output: 2024-09-03


-- 6. DATE_SUB()
-- Subtracts a time/date interval from a date
SELECT DATE_SUB('2024-08-27', INTERVAL 7 DAY) AS last_week;
-- Output: 2024-08-20


-- 7. DATEDIFF()
-- Returns the difference in days between two dates.
SELECT DATEDIFF('2024-08-27', '2024-08-20') AS days_difference;
-- Output: 7


-- 8. DATE_FORMAT()
-- Formats a date according to the specified format.
SELECT DATE_FORMAT('2024-08-27', '%W, %M %d, %Y') AS formatted_date;
-- Output: Tuesday, August 27, 2024


-- 9. EXTRACT()
-- Extracts parts of a date (like year, month, day, etc.).
SELECT EXTRACT(YEAR FROM '2024-08-27') AS year_part,
       EXTRACT(MONTH FROM '2024-08-27') AS month_part,
       EXTRACT(DAY FROM '2024-08-27') AS day_part;
-- Output: 2024       8           27


-- 10. STR_TO_DATE()
-- Converts a string to a date.
SELECT STR_TO_DATE('27-08-2024', '%d-%m-%Y') AS date_converted;
-- Output: 2024-08-27


-- 11. TIME()
-- Extracts the time part from a datetime expression.
SELECT TIME('2024-08-27 14:23:55') AS time_part;
-- Output: 14:23:55


-- 12. TIMESTAMP()
-- Converts a date or date and time string to a timestamp.
SELECT TIMESTAMP('2024-08-27', '14:23:55') AS timestamp_value;
-- Output: 2024-08-27 14:23:55


-- 13. TIMESTAMPDIFF()
-- Returns the difference between two dates in the specified unit (e.g., year, month, day).
SELECT TIMESTAMPDIFF(MONTH, '2024-01-01', '2024-08-27') AS month_diff;
-- Output: 7


-- 14. NOW()
-- Returns the current date and time.
SELECT NOW() AS current_datetime;
-- Output: 2024-08-27 14:23:55


-- 15. YEAR(), MONTH(), DAY()
-- Extracts the year, month, or day from a date.
SELECT YEAR('2024-08-27') AS year_value,
       MONTH('2024-08-27') AS month_value,
       DAY('2024-08-27') AS day_value;
-- Output: 2024        8            27
