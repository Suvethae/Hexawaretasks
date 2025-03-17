-- 1. Creating database.
CREATE DATABASE school_db;
USE school_db;

-- 2. Creating students table.
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age INT NOT NULL,
    grade VARCHAR(10) NOT NULL,
    enrollment_date DATE NOT NULL
);

-- 3. Inserting records of students.
INSERT INTO students (first_name, last_name, email, age, grade, enrollment_date) 
VALUES 
('John', 'Doe', 'john.doe@example.com', 13, 'A', '2025-01-03'),
('Jane', 'Smith', 'jane.smith@example.com', 16, 'B', '2024-09-05'),
('Alice', 'Johnson', 'alice.johnson@example.com', 19, 'B', '2024-12-15'),
('Bob', 'Brown', 'bob.brown@example.com', 12, 'C', '2024-11-20'),
('Charlie', 'Davis', 'charlie.davis@example.com', 18, 'A', '2023-09-10');

-- 4. Retrieving all student details from the table.
SELECT * FROM students;

-- 5. Retrieving students whose age is greater than 15.
SELECT first_name , last_name 
FROM students WHERE age>15;

-- 6. Updating the grade of a student whose id 3 to A
UPDATE students
SET grade = 'A'
WHERE id = 3;
SELECT * FROM students;

-- 7. Deleting a student record whose id 5.
DELETE FROM students
WHERE id = 5;
SELECT * FROM students;

-- Retrieving students who enrolled in the last 6 months.
SELECT * FROM students
WHERE enrollment_date >= NOW() - INTERVAL 6 MONTH;

-- Retrieving students sorted by grade in descending order.
SELECT * FROM students ORDER BY grade DESC;
