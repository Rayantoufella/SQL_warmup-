-- Active: 1773232907061@@127.0.0.1@3306@challenge1
USE challenge1 ;

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) 
);

INSERT INTO categories (id , name) 
VALUES 
(1 , "name A"),
(2 , "name B"),
(3 , "name C"),
(4 , "name D");


ALTER TABLE library_books ADD COLUMN category_id INT ;

ALTER TABLE library_books ADD FOREIGN KEY (category_id) REFERENCES categories(id) ;

SELECT categories.name , library_books.title 
FROM library_books INNER JOIN categories ON library_books.category_id = categories.id ;