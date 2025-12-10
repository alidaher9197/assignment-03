CREATE DATABASE school_db;

CREATE TABLE students_table(
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade DECIMAL(5,2),
    city VARCHAR(50)
);

ALTER TABLE students_table
CHANGE COLUMN grade grade VARCHAR(1);

INSERT INTO students_table
(student_id,first_name,last_name,age,grade,city) 
VALUES
(1, "Ahmad", "Ahmad", 17, "A", "Beirut"),
(2, "Sara", "Khatib", 18, "B", "Tripoli"),
(3, "Hassan", "Zein", 17, "A", "Sidon"),
(4, "Mariam", "Ata", 19, "C", "Beirut"),
(5, "Khaled", "Najjar", 16, "B", "Tyre"),
(6, "Reem", "Salem", 18, "A", "Tripoli"),
(7, "Youssef", "Hany", 17, "C", "Sidon"),
(8, "Hiba", "Zein", 20, "B", "Beirut"),
(9, "Fadi", "Hashem", 16, "A", "Tyre"),
(10, "Layla", "Hassan", 17, "B", "Tripoli");

SELECT * 
FROM students_table;

SELECT first_name,city 
FROM students_table;

SELECT * 
FROM students_table 
WHERE grade="B";

SELECT * 
FROM students_table 
WHERE city!="Beirut";

SELECT * 
FROM students_table 
WHERE age>17;

SELECT * 
FROM students_table 
WHERE age>=18;

SELECT * 
FROM students_table 
WHERE student_id<5;

SELECT * 
FROM students_table 
WHERE age<=16;

SELECT * 
FROM students_table 
WHERE city IS NULL;

SELECT * 
FROM students_table 
WHERE city IS NOT NULL;

SELECT * 
FROM students_table 
WHERE age BETWEEN 17 AND 19;

SELECT * 
FROM students_table 
WHERE age>17 AND grade="A";

SELECT * 
FROM students_table 
WHERE city="Beirut" OR city="Tripoli";

UPDATE students_table
SET grade="A"
WHERE student_id=4;

UPDATE students_table
SET city="Beirut"
WHERE city="Tripoli";

DELETE FROM students_table
WHERE student_id=10;

DELETE FROM students_table
WHERE age<17;