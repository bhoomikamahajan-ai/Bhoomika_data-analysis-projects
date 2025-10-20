-- tag_id, tag_name
/*
SELECT t.tag_name,t.tag_id, count(*) as count
from BooksDB.dbo.book_tags as bt
FULL JOIN BooksDB.dbo.tags as t 
on t.tag_id = bt.tag_id
GROUP BY t.tag_id,t.tag_name
HAVING t.tag_name LIKE '%women%' 

select t.tag_id,count(*)'tag id count',tag_name from BooksDB.dbo.book_tags bt Full join BooksDB.dbo.tags t
on bt.tag_id=t.tag_id
group by t.tag_id,tag_name
having t.tag_name like '%Woman%'
order by [tag id count] desc;

--ratings
--names
--tag id, tag_name
-- use group by and having 

SELECT  Top 20
    bt.tag_id, 
    count(bt.tag_id) AS times_tag_id,
    tags.tag_name
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS tags ON bt.tag_id = tags.tag_id
GROUP BY bt.tag_id, tag_name
HAVING tag_name LIKE '%women%' or tag_name LIKE '%female%'
ORDER BY times_tag_id DESC

--2. authors. books, titles.books 
--ratings
--tag_id 

SELECT b.authors, b.title, b.average_rating, bt.tag_id, tags.tag_name
 FROM BooksDB.dbo.books AS b
 INNER JOIN BooksDB.dbo.book_tags as bt ON b.best_book_id = bt.goodreads_book_id
 INNER JOIN BooksDB.dbo.tags as tags ON tags.tag_id = bt.tag_id
WHERE tags.tag_name like '%easter'

 SELECT * from BooksDB.dbo.tags WHERE tag_name like '%easter'

 -- october and halloween and boss day

 SELECT bt.tag_id, 
    count(bt.tag_id) AS number_times_tagged,
    tags.tag_name
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS tags ON bt.tag_id = tags.tag_id
GROUP BY bt.tag_id, tag_name
HAVING tag_name LIKE '%halloween%' 
ORDER BY number_times_tagged DESC */

SELECT books.title, books.authors
FROM BooksDB.dbo.tags As tags
INNER JOIN BooksDB.dbo.book_tags AS bt ON bt.tag_id = tags.tag_id
INNER JOIN BooksDB.dbo.books AS books ON books.best_book_id = bt.goodreads_book_id
WHERE tag_name LIKE '%Boss%' or tag_name LIKE '%Leader%' and tag_name LIKE '%women%'
ORDER BY authors;