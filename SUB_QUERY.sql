CREATE DATABASE school11;

USE school11;

CREATE TABLE student (
 rollno INT PRIMARY KEY,
 name VARCHAR(50),
 marks INT NOT NULL,
 grade VARCHAR(1),
 city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Puna"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "druva", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT * FROM student;

SELECT AVG(marks)
FROM student;

SELECT name
FROM student
WHERE marks > 74.333;

SELECT name, marks
FROM student
WHERE marks > 74.333;

SELECT name
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);

SELECT name, marks
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);

SELECT rollno
FROM student
WHERE rollno % 2 = 0;

SELECT name
FROM student
WHERE rollno IN (102, 104, 106);

SELECT name, rollno
FROM student
WHERE rollno IN (102, 104, 106);

SELECT name
FROM student
WHERE rollno IN (SELECT rollno FROM student WHERE rollno % 2 = 0);

SELECT name, rollno
FROM student
WHERE rollno IN (SELECT rollno FROM student WHERE rollno % 2 = 0);

SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = "Mumbai") AS temp;

SELECT MAX(marks)
FROM student
WHERE city = "Mumbai";

SELECT (SELECT MAX(marks) FROM student), name
FROM student;
