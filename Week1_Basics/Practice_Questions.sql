WEEK 1 PRACTICE QUESTIONS
-- ================================================
  
-- TOPIC 1: SELECT & WHERE
-- ------------------------------------------------

--Q1: Show all columns of all employees
SELECT *
FROM employees;

-- Q2: Show only name and salary of all employees
SELECT name, salary
FROM employees;

-- Q3: Show all employees whose salary is greater than 50000
SELECT *
FROM employees
WHERE salary > 50000;

-- Q4: Show name and city of employees from Bangalore
SELECT name, city
FROM employees
WHERE city = 'Bangalore';

-- Q5: Show all employees whose age is less than 25
SELECT *
FROM employees
WHERE age < 25;


-- ------------------------------------------------
-- TOPIC 2: AND & OR
-- ------------------------------------------------

-- Q1: Show all employees from Delhi whose age is greater than 25
SELECT *
FROM employees
WHERE city = 'Delhi' AND age > 25;

-- Q2: Show all employees from Mumbai or Bangalore
SELECT *
FROM employees
WHERE city = 'Mumbai' OR city = 'Bangalore';


-- Q3: Show employees from IT department whose salary is greater than 50000
SELECT *
FROM employees
WHERE department = 'IT' AND salary > 50000;

-- Q4: Show employees who are either from Delhi or have salary greater than 60000
SELECT *
FROM employees
WHERE city = 'Delhi' OR salary > 60000;

-- Q5: Show employees from HR department whose age is less than 25 or greater than 30
SELECT *
FROM employees
WHERE department = 'HR' AND (age < 25 OR age > 30);


-- ------------------------------------------------
-- TOPIC 3: IN & NOT IN
-- ------------------------------------------------

-- Q1: Show all employees from Delhi, Mumbai or Bangalore
SELECT *
FROM employees
WHERE city IN ('Delhi', 'Mumbai', 'Bangalore');


-- Q2: Show employees from IT, HR or Finance department
SELECT *
FROM employees
WHERE department IN ('IT', 'HR', 'Finance');


-- Q3: Show employees who are NOT from Delhi or Mumbai
SELECT *
FROM employees
WHERE city NOT IN ('Delhi', 'Mumbai');


-- Q4: Show employees whose department is NOT IT or Finance
SELECT *
FROM employees
WHERE department NOT IN ('IT', 'Finance');

-- Q5: Show name and salary of employees from IT or Marketing
--     department whose salary is greater than 45000
SELECT name, salary
FROM employees
WHERE department IN ('IT', 'Marketing') AND salary > 45000;






