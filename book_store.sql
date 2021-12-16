-- Show Database -- 
SHOW DATABASES;

-- Create Database --
CREATE Database bookstore;

-- Use Database --
USE bookstore;

-- Show Table --
SHOW TABLES; 

-- Create Table --
CREATE Table books
(
 id INT auto_increment primary key,
 author1 VARCHAR(100) NOT NULL,
 author2 VARCHAR(100),
 author3 VARCHAR(100),
 title VARCHAR(100),
 description TINYTEXT,
 place_shell VARCHAR(3),
 stock INT DEFAULT 0,
 creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);

-- Alter Table --
ALTER TABLE books
ADD COLUMN price INT DEFAULT 0,
ADD COLUMN status ENUM ('available', 'out of stock', 'limited'),
DROP COLUMN place_shell;

-- Insert Data --

-- first--
INSERT INTO books(
	author1,
    author2,
    author3,
	title,
	stock,
	price,
	STATUS
) VALUES(
	'Zelda Elma',
	'Do Kyungsoo',
    'Kim Minjeong',
	'How Tobe Success',
	100,
    500000,
	'available');
    
    -- second --
INSERT INTO books(
	author1,
    author2,
	title,
	stock,
	price,
	STATUS
) VALUES(
	'Elma',
	'Sammy',
	'Art of Love',
	50,
    200000,
	'limited');
    
-- third--
INSERT INTO books(
	author1,
    author2,
    author3,
	title,
	stock,
	price,
	STATUS
) VALUES(
	'Sehun',
	'Giselle',
	'Karina',
    'Great KPOP',
	0,
    800000,
	'out of stock');

-- Select all --
SELECT * FROM books;

--  Select with Alias --
SELECT id as ID,
      author1 as A1,
      author2 as A2,
      author3 as A3
      
FROM books;

-- Select id tertentu --
SELECT * FROM books
WHERE id = 1;

-- Select with operator AND --
SELECT * FROM books
WHERE stock > 45 AND price > 100000;

-- Select with operator OR --
SELECT * FROM books
WHERE price > 200000 OR status = 'available';

-- Select with operator NOT --
SELECT * FROM books
WHERE NOT stock > 50;

-- Select with ASC order --
SELECT * FROM books 
ORDER BY id ASC;

-- Select with limit 2 row --
SELECT * FROM books
LIMIT 2;

-- Update  --
UPDATE books
  SET author1 = 'Ningning',
      price = 400000
WHERE id = 2;

-- Delete -- 
DELETE from books
WHERE status = 'out of stock';


