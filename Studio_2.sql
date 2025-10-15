SELECT MAX(LEN(title)) as longest_title
FROM BooksDB.dbo.books

SELECT title
FROM BooksDB.dbo.books
where LEN(title) = 186


SELECT title
FROM BooksDB.dbo.books
WHERE LEN(title) = (SELECT MAX(LEN(title)) FROM BooksDB.dbo.books)

Select MIN(len(authors)) as Shortest_author
from BooksDB.dbo.books

Select authors
from BooksDB.dbo.books
where LEN(authors) = (Select MIN(len(authors)) FROM BooksDB.dbo.books)

SELECT COUNT(*) as Title_w_THE
FROm BooksDB.dbo.books
where title LIKE '%The%'

Select COUNT(*) as author_Z
FROM BooksDB.dbo.books
where authors LIKE 'Z%'

SELECT count(authors) as nonenglish_books
FROM BooksDB.dbo.books
 WHERE LEFT(language_code, 3) <> 'en' AND LEFT(language_code, 3) <> 'eng' AND LEFT(language_code, 3) <> 'en-';

SELECT authors, title as nonenglish_books
FROM BooksDB.dbo.books
 WHERE LEFT(language_code, 3) <> 'en' AND LEFT(language_code, 3) <> 'eng' AND LEFT(language_code, 3) <> 'en-';

SELECT authors, title as nonenglish_books
FROM BooksDB.dbo.books
WHERE SUBSTRING(language_code,1,2) <> 'en';

Select title, authors, language_code, CONCAT(title,' ','by', ' ',authors,' ','in',' ',language_code,' ','language') as combined
FROM BooksDB.dbo.books
WHERE language_code IS NULL;

Select title, authors, language_code
FROM BooksDB.dbo.books
WHERE language_code IS NULL;

SELECT title, authors,coalesce(language_code, 'unknown') as language_code, CONCAT(title,' ','by', ' ', authors,' ','in',' ',language_code,' ','language') as combined
FROM BooksDB.dbo. books

SELECT title, authors, ISNUll(language_code, 'unknown') as language_code, CONCAT(title,' ','by', ' ', authors,' ','in',' ',language_code,' ','language') as combined
FROM BooksDB.dbo. books;









