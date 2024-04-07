CREATE DATABASE school6;
USE school6;

CREATE TABLE student (
 rollno INT PRIMARY KEY,
 name VARCHAR(50),
 marks INT NOT NULL,
 grade VARCHAR(1),
 city VARCHAR(20)
);

CREATE TABLE dept (
 id INT PRIMARY KEY,
 name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101, "english"),
(102, "IT");

SELECT * FROM dept;

UPDATE dept
SET id = 103
WHERE id = 102;

CREATE TABLE teacher (
 id INT PRIMARY KEY,
 name VARCHAR(50),
 dept_id INT,
 FOREIGN KEY (dept_id) REFERENCES dept(id)
 ON UPDATE CASCADE
 ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "ADAM", 101),
(102, "Eve", 102);

SELECT * FROM teacher;

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Puna"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "druva", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SET SQL_SAFE_UPDATES = 0;

Select * FROM student;

