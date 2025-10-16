
/*SELECT Top 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
ORDER BY b.average_rating ASC;

SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
WHERE tr.user_id IS NOT NULL
ORDER BY b.average_rating

SELECT TOP 300 b.title, b.average_rating, b.books_count, tr.user_id, tr.book_id,b.book_id
FROM BooksDB.dbo.books AS b
RIGHT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id;

SELECT b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id, b.book_id as bookID
FROM BooksDB.dbo.books AS b
FULL JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
WHERE b.average_rating > 4.75
ORDER BY b.books_count 

SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books b
INNER JOIN BooksDB.dbo.to_read tr
ON b.book_id = tr.book_id
ORDER BY tr.book_id;

SELECT Top 1 b.title,b.authors,bt.[count],bt.tag_id
FROM BooksDB.dbo.books b  
INNER JOIN BooksDB.dbo.book_tags bt  
ON b.best_book_id = bt.goodreads_book_id
ORDER BY bt.[count] DESC

SELECT *
FROM BooksDB.dbo.tags
WHERE tag_id  = 30574

SELECT *2305
FROM BooksDB.dbo.book_tags
ORDER BY [count] DESC 


SELECT *
FROM BooksDB.dbo.tags
where tag_name LIKE '%american-history%'  

SELECT Top 1 b.title, bt.[count], bt.tag_id
FROM BooksDB.dbo.books b
INNER JOIN BooksDB.dbo.book_tags bt
ON b.best_book_id = bt.goodreads_book_id
WHERE tag_id = 2305
ORDER BY [count] DESC 

SELECT top 10  b.title, count(tr.USER_ID) as Total_User
FROM BooksDB.dbo.books b   
INNER JOIN BooksDB.dbo.to_read tr  
ON b.book_id = tr.book_id
GROUP BY b.title
ORDER BY Total_User DESC*/ 38457

SELECT top 10  tr.user_id, COUNT(tr.book_id) as to_read_list
from BooksDB.dbo.to_read tr  
INNER JOIN BooksDB.dbo.books b 
on b.book_id = tr.book_id
GROUP BY [user_id]
ORDER BY to_read_list DESC;

SELECT title as to_read_list
FRom BooksDB.dbo.books b  
LEFT JOIN BooksDB.dbo.to_read tr  
ON b.book_id = tr.book_id
where [user_id]= 38457;

