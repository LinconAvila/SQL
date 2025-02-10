--3. Write a query that returns the names of books, their prices, the publisher, and the subject, in alphabetical order of book names.

SELECT NameBook Book, PriceBook Price, NamePublisher Publisher, NameSubject 'Subjects'
FROM Book
JOIN Publisher
	ON Publisher.IdPublisher = Book.IdPublisher
JOIN Subjects
	ON Subjects.IdSubject = Book.IdSubject
ORDER BY Book;