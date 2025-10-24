
/*CREATE TABLE Sep2025JunkDB.bhoomika_mahajan.book (
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    author_id INT,
    title VARCHAR(255),
    isbn INT,
    available BIT,
    genre_id INT
);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (2, 'A Midsummers Night Dream', 978149413, 1, 23)

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (2, 'Romeo and Juliet', 988535196, 1, 3);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (1, 'The Golden Compass', 451664226, 1, 1);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (1, 'The Subtle Knife', 160419390, 1, 1);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (1, 'The Amber Spyglass', 94387895, 1, 1);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (3, 'The Alchemist', 464069772, 1, 2);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (4, 'And Then There Were None', 335973357, 1, 6);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (5, 'The Joy Luck Club', 990050329, 1, 10);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (5, 'The Moon Lady', 91720786, 1, 24);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (6, 'Sense and Sensibility', 156879860, 1, 2);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (6, 'Northanger Abbey', 951273178, 1, 3);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (6, 'Pride and Prejudice', 415886839, 1, 3);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (6, 'Mansfield Park', 188534067, 1, 3);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (6, 'Emma', 994896202, 1, 3);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (6, 'Persuasion', 28150097, 1, 3);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (6, 'Lady Susan', 230962926, 1, 3);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (7, 'Wuthering Heights', 280569946, 1, 3);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (8, 'The Handmaids Tale', 639239663, 1, 5);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (8, 'The Testaments', 826875490, 1, 5);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (9, 'The Parable of the Sower', 283359358, 1, 5);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (10, 'Little Women', 495409887, 1, 23);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (11, 'Still Life', 455128657, 1, 6);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (11, 'A Fatal Grace', 832517012, 1, 6);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (11, 'The Cruelest Month', 419285319, 1, 6);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (11, 'The Murder Stone', 656621400, 1, 6);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (11, 'The Brutal Telling', 144255852, 1, 6);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (11, 'Bury Your Dead', 208180961, 1, 6);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (11, 'A Trick of the Light', 93451531, 1, 6);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (12, 'Midnights Children', 881082293, 1, 10);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (13, 'Dont Let the Pigeon Drive the Bus!', 18409532, 1, 24);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (14, 'Beezus and Ramona', 744412630, 1, 24);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (15, 'Organic Chemistry', 604328803, 1, 25);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (16, 'I Know Why the Caged Bird Sings', 909947112, 1, 12);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (17, 'Beloved', 46736233, 1, 10);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.book (author_id, title, isbn, available, genre_id)
VALUES (18, 'Brassbones and Rainbows', 330608463, 1, 26);


SELECT *
FROM Sep2025JunkDB.bhoomika_mahajan.book

CREATE TABLE Sep2025JunkDB.bhoomika_mahajan.author (
    author_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_year INT,
    death_year INT
);


INSERT INTO Sep2025JunkDB.bhoomika_mahajan.author (first_name, last_name, birth_year, death_year)
VALUES ('Phillip', 'Pullman', 1946, null);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.author(first_name, last_name, birth_year, death_year)
VALUES ('William', 'Shakespeare', 1564, 1616);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.author (first_name, last_name, birth_year, death_year)
VALUES ('Paulo', 'Coelho', 1947, null);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.author (first_name, last_name, birth_year, death_year)
VALUES ('Agatha', 'Christie', 1890-09-15, 1976-01-12);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.author (first_name, last_name, birth_year, death_year)
VALUES ('Amy', 'Tan', 1952-02-19, null);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.author (first_name, last_name, birth_year, death_year)
VALUES ('Jane', 'Austin', 1775-12-16, 1817-07-18);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.author(first_name, last_name, birth_year, death_year)
VALUES ('Emily', 'Bronte', 1818-07-30, 1848-12-19);


CREATE TABLE Sep2025JunkDB.bhoomika_mahajan.patron (
    patron_id INT IDENTITY (1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    loan_id INT
);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.patron(first_name, last_name, loan_id)
VALUES ('Jennifer', 'Slayny', NULL);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.patron(first_name, last_name, loan_id)
VALUES ('Susan', 'Traviss', NULL);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.patron(first_name, last_name, loan_id)
VALUES ('Vincent', 'Ritelli', NULL);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.patron(first_name, last_name, loan_id)
VALUES ('Tasia', 'Laybourne', NULL);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.patron(first_name, last_name, loan_id)
VALUES ('Wren', 'Gergler', NULL);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.patron(first_name, last_name, loan_id)
VALUES ('Tory', 'Lees', NULL);

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.patron(first_name, last_name, loan_id)
VALUES ('Estelle', 'Di Lorio', NULL);

SELECT *
FROM Sep2025JunkDB.bhoomika_mahajan.patron


CREATE TABLE Sep2025JunkDB.bhoomika_mahajan.genre (
    genre_id INT PRIMARY KEY,
    genres VARCHAR(100)
);


INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (1, 'Fantasy');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (2, 'Adventure');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (3, 'Romance');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (4, 'Contemporary');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (5, 'Dystopian');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (6, 'Mystery');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (7, 'Horror');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (8, 'Thriller');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (9, 'Paranormal');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (10, 'Historical Fiction');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (11, 'Science Fiction');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (12, 'Memoir');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (13, 'Cooking');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (14, 'Art');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (15, 'Self-Help');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (16, 'Development');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (17, 'Motivational');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (18, 'Health');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (19, 'History');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (20, 'Travel');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (21, 'Guide');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (22, 'Families and Relationships');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (23, 'Humor');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (24, 'Childrens');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (25, 'Reference');

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.genre(genre_id, genres)
VALUES (26, 'Poetry');

SELECT *
FROM Sep2025JunkDB.bhoomika_mahajan.genre

CREATE TABLE Sep2025JunkDB.bhoomika_mahajan.loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT
    CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES Sep2025JunkDB.bhoomika_mahajan.book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);



--Return the mystery book titles and their ISBNs.


SELECT b.title, b.ISBN, g.genres
FROM Sep2025JunkDB.bhoomika_mahajan.book AS b
INNER JOIN Sep2025JunkDB.bhoomika_mahajan.genre As g
ON b.genre_id = g.genre_id
Where g.genres Like '%mystery%'

---Return all of the titles and the author's first and last names for books written by authors who are currently living.

Select b.title, a.first_name, a.last_name, a.death_year
From Sep2025JunkDB.bhoomika_mahajan.book AS b
Inner join Sep2025JunkDB.bhoomika_mahajan.author as a ON b.author_id = a.author_id
where a.death_year is NULL 

---The library would like you to create a query that will update the database when a book is loaned out.

This query needs to perform the following functions:

Change available to 0 (false) for the appropriate book.
Add a new row to the loan table with today's date as the date_out and the ids in the row matching the appropriate patron_id and book_id.
Update the appropriate patron with the loan_id for the new row created in the loan table.
You can use any patron and book that strikes your fancy to create and test out this query.
*/

Book id = 10
Patron id = 7

-- Change available to 0 (false) for the appropriate book.
UPDATE Sep2025JunkDB.bhoomika_mahajan.book
SET available = 0
WHERE book_id = 10;


--  Insert a new loan record with today's date
INSERT INTO Sep2025JunkDB.bhoomika_mahajan.loan (patron_id, book_id, date_out)
VALUES (7, 10, GETDATE());

--SELECT * FRom Sep2025JunkDB.bhoomika_mahajan.book

-- Update the patron record with this new loan_id
UPDATE patrons
SET loan_id = @new_loan_id
WHERE patron_id = @patron_id;