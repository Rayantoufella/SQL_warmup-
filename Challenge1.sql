
CREATE DATABASE IF NOT EXISTS challenge1;


USE challenge1;


CREATE TABLE library_books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL, 
    author VARCHAR(100),
    published_year YEAR,
    status ENUM("Disponible", "Emprunter", "Perdu"),
    price DECIMAL(10, 2) ,
);
INSERT INTO library_books (id, title, author, published_year, status, price )
VALUES 
(1, "Book A", "Author A", 1950, "Disponible", 190.99),
(2, "Book B", "Author B", 2020, "Disponible", 290.99),
(3, "Book C", "Author B", 2023, "Disponible", 300.00),
(4, "Book D", "Author C", 2010, "Emprunter", NULL),
(5, "Book E", "Author D", 1995, "Perdu", 150.00),
(6, "Book F", "Author E", 2015, "Disponible", 25.00),
(7, "Book G", "Author F", 2026, "Disponible", 98.99),
(8, "Book H", "Author G", 1990, "Emprunter", 20.00);


SELECT author ,price FROM library_books;

SELECT title , price FROM library_books WHERE price BETWEEN 100 AND 300 ;

SELECT title , published_year FROM library_books WHERE published_year >= 2020 ;

SELECT title FROM library_books WHERE title LIKE "%PHP%" ;

SELECT title FROM library_books WHERE status = "Perdu" ORDER BY published_year DESC ;

SELECT DISTINCT author FROM library_books ;

SELECT UPPER(title) AS titre_majuscule , ROUND(price) AS prix_arrondi FROM library_books ; 


SELECT SUM(price) FROM library_books ; 


SELECT COUNT(title) FROM library_books WHERE status ="Disponible" ;

SELECT MIN(price) FROM library_books ; 
SELECT MAX(price) FROM library_books ;

SELECT AVG(price) FROM library_books ;


SELECT COUNT(title) , status FROM library_books GROUP BY status ;

SELECT COUNT(title) , author FROM library_books GROUP BY author ;

SELECT COUNT(title) , author FROM library_books GROUP BY author HAVING SUM(price) > 500.00 ;