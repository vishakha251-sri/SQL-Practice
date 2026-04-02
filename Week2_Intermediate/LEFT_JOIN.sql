-- ================================================
-- SQL WEEK 2 - LEFT JOIN
-- ================================================

-- ------------------------------------------------
-- DEFINITION
-- ------------------------------------------------
-- LEFT JOIN: Returns all records from left table
--            and matching records from right table
--            Non matching rows show NULL
-- Syntax:
-- SELECT table1.column, table2.column
-- FROM table1
-- LEFT JOIN table2
-- ON table1.common_column = table2.common_column

-- ------------------------------------------------
-- RULES
-- ------------------------------------------------
-- 1. Left table = FROM ke baad wali table
-- 2. All rows from left table always appear
-- 3. Non matching rows from right table = NULL
-- 4. Use IS NULL to find unmatched rows
-- 5. Never use = NULL, always use IS NULL

-- ------------------------------------------------
-- INNER JOIN vs LEFT JOIN
-- ------------------------------------------------
-- INNER JOIN = only matching rows
-- LEFT JOIN  = all left rows + matching right rows

-- ------------------------------------------------
-- PRACTICE QUESTIONS
-- ------------------------------------------------

-- Q1: Show all students and their course name including NULL
SELECT students.name, courses.course_name
FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id;

-- Q2: Show students who have NO course assigned
SELECT students.name, courses.course_name
FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id
WHERE courses.course_id IS NULL;

-- Q3: Show all students, course name sorted by age ASC
SELECT students.name, courses.course_name, students.age
FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id
ORDER BY students.age ASC;

-- Q4: Show count of students per course including NULL
SELECT courses.course_name, COUNT(students.name)
FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id
GROUP BY courses.course_name;

-- Q5: Show students whose course is NULL or course is Python
SELECT students.name, courses.course_name
FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id
WHERE courses.course_name = 'Python'
OR courses.course_id IS NULL;



