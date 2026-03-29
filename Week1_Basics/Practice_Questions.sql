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


-- ------------------------------------------------
-- TOPIC 4: BETWEEN
-- ------------------------------------------------

-- Q1: Show employees whose salary is between 30000 and 60000
SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 60000;


-- Q2: Show employees whose age is between 25 and 30
SELECT *
FROM employees
WHERE age BETWEEN 25 AND 30;


-- Q3: Show name and department of employees whose salary 
--     is between 45000 and 70000
SELECT name, department
FROM employees
WHERE salary BETWEEN 45000 AND 70000;


-- Q4: Show employees whose age is between 22 and 28 
--     and are from Delhi
SELECT *
FROM employees
WHERE age BETWEEN 22 AND 28 AND city = 'Delhi';


-- Q5: Show employees whose salary is NOT between 30000 and 50000
SELECT *
FROM employees
WHERE salary NOT  BETWEEN 30000 AND 50000;


-- ------------------------------------------------
-- TOPIC 5: LIKE
-- ------------------------------------------------

-- Q1: Show employees whose name starts with 'R'
SELECT *
FROM employees
WHERE name LIKE 'R%';

-- Q2: Show employees whose name ends with 'a'
SELECT *
FROM employees
WHERE name LIKE '%a';

-- Q3: Show employees whose name contains 'an'
SELECT *
FROM employees
WHERE name LIKE '%an%';

-- Q4: Show employees whose city starts with 'B'
SELECT *
FROM employees
WHERE city LIKE 'B%';

-- Q5: Show employees whose name starts with 'R' or ends with 'a'
SELECT *
FROM employees
WHERE name LIKE 'R%' OR  name LIKE '%a';
