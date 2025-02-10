-- Joins: INNER JOIN

/*
Syntax:

SELECT columns
FROM table1
[INNER] JOIN table2
	ON table1.column = table2.column
[INNER] JOIN tableN
	ON table1.column = tableN.column
*/

SELECT * 
FROM Book
INNER JOIN Subjects
	ON Book.IdSubject = Subjects.IdSubject;

SELECT NameBook, NameSubject 
FROM Book
INNER JOIN Subjects
	ON Book.IdSubject = Subjects.IdSubject;


SELECT B.NameBook Books, P.NamePublisher Publisher
FROM Book B
INNER JOIN Publisher P
ON B.IdPublisher = P.IdPublisher
WHERE P.NamePublisher LIKE '[MH]%'
ORDER BY B.NameBook;
GO

SELECT B.NameBook Books, P.NamePublisher Publisher
FROM Publisher P
INNER JOIN  Book B
ON P.IdPublisher = B.IdPublisher
WHERE P.NamePublisher LIKE '[MH]%'
ORDER BY B.NameBook;
GO

SELECT B.NameBook Book, A.NameAuthor Author, A.LastNameAuthor 'Last Name', P.NamePublisher Publisher
FROM BookAuthor BA
INNER JOIN Author A
	ON BA.IdAuthor = A.IdAuthor
INNER JOIN Book B
	ON BA.IdBook = B.IdBook
INNER JOIN Publisher P
	ON B.IdPublisher = P.IdPublisher
ORDER BY Book;