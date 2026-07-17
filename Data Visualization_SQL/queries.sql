DROP TABLE IF EXISTS students;


CREATE TABLE students (
    roll_no INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    stream VARCHAR(50),
    cgpa DECIMAL(3, 2)
);

INSERT INTO students (roll_no, student_name, age, stream, cgpa) VALUES
(101, 'Aarav Sharma', 20, 'B.Tech CSE', 8.50),
(102, 'Ananya Iyer', 21, 'B.Com', 9.20),
(103, 'Rohan Verma', 19, 'B.Tech Mechanical', 6.80),
(104, 'Diya Patel', 22, 'B.Sc Biotechnology', 7.90),
(105, 'Sai Kumar', 20, 'B.Tech CSE', 9.45);

-- WHERE & GROUP BY

SELECT student_name, cgpa 
FROM students 
WHERE stream = 'B.Tech CSE' 
ORDER BY cgpa DESC;


-- LIKE 

SELECT * 
FROM students 
WHERE stream LIKE 'B.Tech%';

--UPDATE

UPDATE students 
SET cgpa = 7.40 
WHERE roll_no = 103;

SELECT * FROM students


-- DELETE 

DELETE FROM students 
WHERE roll_no = 104;


SELECT * FROM students


