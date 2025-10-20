/* can choose whether you want to use a correlated subquery, a nested subquery, 
the UNION operator, the INTERSECT operator, or the EXCEPT operator for each one*/

--1. Write a query that will return the number of users who rated a book above it's average rating.

--books: avg rating
--ratings : user id

/*SELECT distinct count(r.[user_id])
FROM BooksDB.dbo.ratings AS r
WHERE rating > (SELECT AVG(average_rating) FROM BooksDB.dbo.books)

*/

--the book ids of all books that have over 1000 ratings of 1 
--star or over 1000 ratings of 5 stars.

SELECT Top 100 *
From BooksDB.dbo.ratings


SELECT Top 10 book_id
From BooksDB.dbo.books
where ratings_5 < 1000

SELECT distinct r.book_id
FROM BooksDB.dbo.ratings as r
WHERE r.book_id IN (
    Select book.book_id
    FROM BooksDB.dbo.books AS book
    WHERE book.ratings_1 > 1000 OR
    Book.ratings_5 > 1000
)
ORDER BY r.book_id ASC


--the book ids of all books that have over 1000 ratings of 1 
--star or over 1000 ratings of 5 stars.
SELECT distinct r.book_id
FROM BooksDB.dbo.ratings as r
WHERE r.book_id IN (
    Select book.book_id
    FROM BooksDB.dbo.books AS book
    WHERE book.ratings_1 > 1000 AND
    Book.ratings_5 > 1000
)
ORDER BY r.book_id ASC

--the book ids of books that have a language code of "en-US"
-- and not a langugae code of "en-GB".

SELECT distinct r.book_id
FROM BooksDB.dbo.ratings as r
WHERE r.book_id IN (
    Select book.book_id
    FROM BooksDB.dbo.books AS book
    WHERE book.language_code like '%en-US%' AND
    book.language_code <> 'en-GB'
)


SELECT book_id
FROM BooksDB.dbo.books
WHERE language_code = 'en-US'

EXCEPT

SELECT book_id
FROM BooksDB.dbo.books
WHERE language_code = 'en-GB';

---names of the tags and the tag ids  for tags 
--that were used over 100,000 times for a book.

SELECT distinct (tag_id)
From BooksDB.dbo.book_tags 
WHERE [count] > 100000



SELECT t.tag_id, t.tag_name
FROM BooksDB.dbo.tags AS t
WHERE t.tag_id IN (
    SELECT tag_id
    FROM BooksDB.dbo.book_tags
    WHERE [count] > 100000
);