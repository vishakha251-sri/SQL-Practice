-- ================================================
-- SQL WEEK 2 - INNER JOIN
-- ================================================

-- ------------------------------------------------
-- DEFINITION
-- ------------------------------------------------
INNER JOIN: Returns only matching records from both tables
-- Syntax:
SELECT table1.column, table2.column
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column

-- ------------------------------------------------
-- RULES
-- ------------------------------------------------
1. ON comes after INNER JOIN always
2. WHERE comes after ON always
3. Always write table name before column (table.column)
4. Common column must exist in both tables
5. Non matching rows are excluded

-- ------------------------------------------------
-- QUERY ORDER
-- ------------------------------------------------
-- SELECT
-- FROM
-- INNER JOIN
-- ON
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- LIMIT

-- ------------------------------------------------
-- PRACTICE QUESTIONS
-- ------------------------------------------------

-- Q1: Show student name and course name
SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id;

-- Q2: Show student name, age and course name
SELECT students.name, students.age, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id;

-- Q3: Show students enrolled in Python course
SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id
WHERE courses.course_name = 'Python';

-- Q4: Show student name and course name sorted by name A to Z
SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id
ORDER BY students.name ASC;

-- Q5: Show student name and course name where age > 21
SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id
WHERE students.age > 21;

-- Q6: Show student name, age and course name
--     where age is between 20 and 22 sorted by age ASC
SELECT students.name, students.age, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id
WHERE students.age BETWEEN 20 AND 22
ORDER BY students.age ASC;

-- Q7: Show count of students in each course
--     sorted by count highest to lowest
SELECT courses.course_name, COUNT(*)
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id
GROUP BY courses.course_name
ORDER BY COUNT(*) DESC;

-- Q8: Show course name and average age of students
SELECT courses.course_name, AVG(students.age)
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id
GROUP BY courses.course_name;

-- Q9: Show only courses which have more than 1 student
SELECT courses.course_name, COUNT(*)
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id
GROUP BY courses.course_name
HAVING COUNT(*) > 1;

-- Q10: Show student name and course name
--      where course contains 'P' and age > 20
SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id
WHERE courses.course_name LIKE '%P%'
AND students.age > 20;
