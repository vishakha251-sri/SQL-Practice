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

