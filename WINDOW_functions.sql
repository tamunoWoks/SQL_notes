-- WINDOW FUNCTIONS

-- Window functions in SQL are powerful tools that allow you to perform calculations across a set of table rows that are somehow related to the current row. 
-- Unlike aggregate functions, which return a single result for each group, window functions return a result for every row.

-- KEY CONCEPTS OF WINDOW FUNCTIONS
-- Window: The set of rows on which the window function operates. It's defined using the OVER() clause.
-- Partitions: You can divide the rows into partitions, and the window function is applied to each partition separately.
-- Ordering: Within each partition, you can order the rows, and the window function can access data based on this order.
