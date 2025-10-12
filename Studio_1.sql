--Q 1
SELECT TOP 100
    book_id
    ,authors
    ,title
    ,average_rating as rating
FROM BooksDB.dbo.books
ORDER BY rating DESC;

---Q2
SELECT top 1 book_id, title, average_rating
FROM BooksDB.dbo.books
ORDER BY average_rating ASC

--Q3
SELECT Top 1 goodreads_book_id, tag_id, [count]
From BooksDB.dbo.book_tags
ORDER BY [count] DESC

--Q4
SELECT tag_name
FROM BooksDB.dbo.tags
where tag_id = 30574

--Q6

Select count(book_id)
FROM BooksDB.dbo.books
where title LIKE '%happy%'

--Q. 7

SELECT book_id, authors, title, average_rating as 'rating'
FROM BooksDB.dbo.books
WHERE authors IN ('Bill Watterson','Brandon Sanderson', 'J.K. Rowling')
order by authors DESC, rating DESC

--Q8

Select authors
  From BooksDB.dbo.books
  where authors BETWEEN 'rock'and 'roll'

--Part 2
--which author has written the most book?

SELECT Top 1 authors, count(*) as Books_Count
From BooksDB.dbo.books
GROUP BY authors
Order by Books_Count DESC

-- Top 10 books publihsed in 1983

SELECT top 10 original_title,authors,original_publication_year as My_Year
FROM BooksDB.dbo.books
where original_publication_year = 1983