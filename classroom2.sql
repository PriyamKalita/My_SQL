use COLLEGE;

CREATE TABLE student(
 rollno INT PRIMARY KEY,
 name VARCHAR(50)
);

INSERT INTO student
(rollno, name)
VALUES
(101, "A"),
(102, "B");

SELECT * FROM student;