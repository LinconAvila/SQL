--1. Write a query that returns the names of the books and their respective subjects.

SELECT NameBook Book, NameSubject 'Subject'
FROM Book
JOIN Subjects
	ON Book.IdSubject = Subjects.IdSubject
ORDER BY Book;