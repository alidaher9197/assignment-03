CREATE DATABASE school_db;
CREATE TABLE students_table(
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50)
    last_name VARCHAR(50),
    age INT,
    grade DECIMAL(5,2),
    city VARCHAR(50)
);