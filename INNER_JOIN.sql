CREATE DATABASE school8;
USE school8;

CREATE TABLE student(
 id INT PRIMARY KEY,
 name VARCHAR(50)
);

INSERT INTO student
(id, name)
VALUES
(101, "adam"),
(102, "bob"),
(103, "casey");

CREATE TABLE course(
 id INT PRIMARY KEY,
 cours VARCHAR(50)
);

INSERT INTO course
(id, cours)
VALUES
(102, "enlish"),
(105, "math"),
(103, "science"),
(107, "CSE");

SELECT * FROM student;
SELECT * FROM course;

SELECT * 
FROM student
INNER JOIN course
ON student.id = course.id;

SELECT * 
FROM student as s
INNER JOIN course as c
ON s.id = c.id;

SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.id = c.id;

SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
UNION
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

SELECT *
FROM student as a
LEFT JOIN course as b
ON a.id = b.id
WHERE b.id IS NULL;

SELECT *
FROM student as a
RIGHT JOIN course as b
ON a.id = b.id
WHERE a.id IS NULL;

SELECT *
FROM student as a
LEFT JOIN course as b
ON a.id = b.id
WHERE b.id IS NULL
UNION
SELECT *
FROM student as a
RIGHT JOIN course as b
ON a.id = b.id
WHERE a.id IS NULL;

