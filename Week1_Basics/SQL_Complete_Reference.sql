-- ================================================
-- SQL COMPLETE REFERENCE - WEEK 1
-- ================================================

-- ------------------------------------------------
-- 1. SELECT
-- ------------------------------------------------
-- Definition: Retrieves data from a table
-- Syntax: SELECT column FROM table

-- Example:
SELECT *
FROM employees;
SELECT name, salary
FROM employees;

-- Quick Reference:
-- SELECT * = all columns
-- SELECT col1, col2 = specific columns

-- ------------------------------------------------
-- 2. WHERE
-- ------------------------------------------------
-- Definition: Filters rows based on a condition
-- Syntax: SELECT * FROM table WHERE condition

-- Example:
SELECT *
FROM employees
WHERE city = 'Delhi';

-- Quick Reference:
-- = exact match
-- != not equal (NEVER use ! alone)
-- > greater | < less | >= | <=

-- ------------------------------------------------
-- 3. AND / OR
-- ------------------------------------------------
-- Definition: Combines multiple conditions
-- AND = both conditions must be true
-- OR  = at least one condition must be true

-- Example:
SELECT *
FROM employees
WHERE city = 'Delhi' AND age > 25;
SELECT *
FROM employees 
WHERE city = 'Delhi' OR city = 'Mumbai';

-- Quick Reference:
-- NEVER use comma between conditions!
-- Always repeat column name after OR!

-- ------------------------------------------------
-- 4. IN / NOT IN
-- ------------------------------------------------
-- Definition: Matches or excludes values from a list
-- Syntax: WHERE column IN ('val1', 'val2')

-- Example:
SELECT *
FROM employees
WHERE city IN ('Delhi', 'Mumbai');
SELECT *
FROM employees
WHERE city NOT IN ('Delhi', 'Mumbai');

-- Quick Reference:
-- IN = shortcut for multiple OR conditions
-- NOT IN = use when excluding multiple values

-- ------------------------------------------------
-- 5. BETWEEN
-- ------------------------------------------------
-- Definition: Filters within a range (both values included)
-- Syntax: WHERE column BETWEEN val1 AND val2

-- Example:
SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 60000;

-- Quick Reference:
-- NEVER use = with BETWEEN
-- Works with numbers and dates

-- ------------------------------------------------
-- 6. LIKE
-- ------------------------------------------------
-- Definition: Searches for a pattern in text
-- Syntax: WHERE column LIKE 'pattern'

-- Example:
SELECT *
FROM employees
WHERE name LIKE 'A%';
SELECT * 
FROM employees 
WHERE name LIKE '%a';
SELECT * 
FROM employees
WHERE name LIKE '%an%';

-- Quick Reference:
-- 'A%'   = starts with A
-- '%a'   = ends with a
-- '%an%' = contains 'an' anywhere
-- '_a%'  = second letter is 'a'
-- NEVER use = with LIKE

-- ------------------------------------------------
-- 7. ORDER BY
-- ------------------------------------------------
-- Definition: Sorts the result set
-- Syntax: ORDER BY column ASC/DESC

-- Example:
SELECT * 
FROM employees
ORDER BY salary DESC;
SELECT *
FROM employees 
ORDER BY name ASC;

-- Quick Reference:
-- ASC  = smallest to largest (default)
-- DESC = largest to smallest

-- ------------------------------------------------
-- 8. LIMIT
-- ------------------------------------------------
-- Definition: Restricts the number of rows returned
-- Syntax: LIMIT number

-- Example:
SELECT *
FROM employees
ORDER BY salary DESC LIMIT 5;

-- Quick Reference:
-- Always comes LAST in the query
-- Use with ORDER BY for top N results
-- NEVER use WHERE LIMIT!

-- ------------------------------------------------
-- 9. GROUP BY
-- ------------------------------------------------
-- Definition: Groups rows that share the same value
-- Syntax: GROUP BY column

-- Example:
SELECT department, COUNT(*)
FROM employees 
GROUP BY department;
SELECT city, AVG(salary)
FROM employees
GROUP BY city;

-- Quick Reference:
-- Always use aggregate function with GROUP BY
-- Column in SELECT must be in GROUP BY
-- Use SUM()/COUNT() in ORDER BY after GROUP BY!

-- ------------------------------------------------
-- 10. HAVING
-- ------------------------------------------------
-- Definition: Filters groups after GROUP BY
-- Syntax: GROUP BY column HAVING condition

-- Example:
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

-- Quick Reference:
-- WHERE = filters before GROUP BY
-- HAVING = filters after GROUP BY
-- Always use aggregate function with HAVING

-- ------------------------------------------------
-- 11. AGGREGATE FUNCTIONS
-- ------------------------------------------------
-- Definition: Performs calculations on a group of rows

-- Example:
SELECT COUNT(*) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT MIN(salary) FROM employees;

-- Quick Reference:
-- COUNT(*) = count all rows
-- COUNT(col) = count non-null values
-- SUM(col) = total of a column
-- AVG(col) = average of a column
-- MAX(col) = highest value
-- MIN(col) = lowest value
-- NEVER use COUNT(tablename)!

-- ================================================
-- GOLDEN RULE: QUERY ORDER
-- ================================================
-- SELECT
-- FROM
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- LIMIT
-- ================================================
