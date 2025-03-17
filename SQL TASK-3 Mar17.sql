CREATE DATABASE library_db;
USE library_db;

-- Creating the books table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    published_year INT NOT NULL,
    genre VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- CRUD OPERATIONS
-- Creating
INSERT INTO books (title, author, published_year, genre, price) VALUES 
('Ponniyin Selvan', 'Kalki Krishnamurthy', 1950, 'Historical Fiction', 499.00),
('Silappathikaram', 'Ilango Adigal', 500, 'Epic Poetry', 299.00),
('Bharathiyin Kavithaigal', 'Mahakavi Subramania Bharathi', 1921, 'Poetry', 199.00),
('Kadal Pura', 'S. Venkatesan', 2020, 'Historical Fiction', 399.00),
('Moondru Kangal', 'Sujatha', 1984, 'Science Fiction', 249.00);

-- Reading or Retrieving
SELECT * FROM books;
SELECT * FROM books WHERE price > 300;

-- Updating
UPDATE books 
SET price = 550.00 
WHERE title = 'Ponniyin Selvan';

-- Deleting
DELETE FROM books WHERE title = 'Silappathikaram';





