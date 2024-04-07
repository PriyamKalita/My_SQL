use school2;

SELECT city, name FROM student;

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks > 80;

SELECT * FROM student WHERE city = "Mumbai";

SELECT * FROM student WHERE marks + 10 > 93;

SELECT * FROM student WHERE marks > 80 AND city = "Mumbai";

SELECT * FROM student WHERE marks > 80 OR city = "Mumbai";

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student WHERE city IN ("Delhi", "Mumbai");

SELECT * FROM student WHERE city NOT IN ("Delhi", "Mumbai");

SELECT * FROM student LIMIT 3;

SELECT rollno, name FROM student LIMIT 3;

SELECT * FROM student
ORDER BY city ASC;

SELECT * FROM student
ORDER BY city DESC;