--Question 1 Select the top 1000 rows from the books table. Make sure you are able to see all of the columns.
USE BooksDB
SELECT TOP 1000 
FROM books;
--Question 2 Count the number of titles. Are there 10,000 titles as promised by the dataset

SELECT COUNT(title)
FROM books;

--Question 3 Count the number of books where the original_publication_year is earlier than 1800.
SELECT COUNT(id) as book_count_before_1800
FROM books
where original_publication_year  1800;

-- Create a query that displays distinct authors from the table.
SELECT Distinct authors
FROM books;

--Question 5 Create a query that displays a count of all the books that contain a language code for English. This could be represented in the table as eng or en-.
SELECT count(id)
FROM books
WHERE language_code LIKE '%en%';

--Question 6 Create a query to check how many original titles were written during World War I era (1914-1921).
SELECT count(original_title)
FROM Books
WHERE original_publication_year BETWEEN 1914 and 1921;

--Select the top 1000 table items ordered by the tag_id
SELECT top 1000 
FROM book_tags
ORDER BY tag_id;

-- Create a query that counts the number of goodreads_book_id grouped by the tag_id.
Select tag_id, count(goodreads_book_id) as count
from book_tags
GROUP BY tag_id;

--In the last query, we created a new, unnamed column. Use AS to create an alias to provide a name of your choice to this new column.
Select tag_id, count(goodreads_book_id) as book_count
from book_tags
GROUP BY tag_id;

--Create a query that displays the top 1000 items in the table in descending order.
SELECT TOP 1000 
FROM ratings
ORDER BY rating DESC;

--Create a query that returns the total number of users that have given a rating of less than 2.
SELECT Count(user_id)
FROM ratings
WHERE rating 2;

--Create a query that returns the sum of books that have a rating of 4 or higher.
SELECT count(book_id)
FROM ratings
WHERE rating = 4;

--Create a query that returns table items where the tag_name describes the book as a mystery.

SELECT  
FROM tags
WHERE tag_name LIKE '%mystery%';

 SELECT 
     FROM BooksDB.dbo.tags
     WHERE tag_name  'd' AND tag_name = 'c';

--Answer 2794 rows of records where the tag name is C from table tags, database Books. All the columns (2) are returned from the table. 

--Create a query that uses the user_id to count the total number of books that each user wants to read. Print the results in ascending order by user_id under the alias 'Total Books To Read'.
SELECT user_id, Count(book_id) as Total Books To Read
FROM to_read
GROUP BY [user_id]
ORDER BY user_id ASC;

--Create a query that uses user_id to count the total number of books each user wants to read. Have the results sort the table by the total number of book_ids in descending order and under the alias 'Total Books To Read'.
SELECT user_id, Count(book_id) as Total Books To Read
FROM to_read
GROUP BY [user_id]
ORDER BY [Total Books To Read] DESC;

