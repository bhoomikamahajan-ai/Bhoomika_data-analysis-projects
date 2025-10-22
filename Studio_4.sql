-- multiple authors 



SELECT book_id, title, authors
FROM BooksDB.dbo.books 
WHERE authors =
    (SELECT authors
    WHERE authors LIKE '%,%');

--Ira was asked by a customer for titles that have been tagged "Meditation".  
--As you create a query for Ira, think about how the tables in BooksDB are organized as you write your query.

Use BooksDB
SELECT title
FROM books
where best_book_id IN (
    Select goodreads_book_id
    From BooksDB.dbo.book_tags
    where tag_id IN
(
    Select tag_id
    FROM BooksDB.dbo.tags as t
    where tag_name LIKE '%Meditation%'
)
);

--Write a query that displays both the original title and title for Alyce, 
---in descending order by rating.  Make
--- sure that none of the original titles contain NULL values either.

Use BooksDB
SELECT original_title, title, average_rating
FROM  books
WHERE  original_title IS NOT NULL

INTERSECT

SELECT original_title, title, average_rating
FROM  books
WHERE  average_rating >= 4.2

ORDER BY average_rating DESC;




