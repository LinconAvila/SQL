--5. Return the subjects and surnames of authors of books that cost more than R$80.00.

SELECT NameSubject 'Subject', LastNameAuthor Surname, PriceBook Price
FROM BookAuthor
JOIN Author
	ON Author.IdAuthor = BookAuthor.IdAuthor
JOIN Book
	ON Book.IdBook = BookAuthor.IdBook
JOIN Subjects
	ON Subjects.IdSubject = Book.IdSubject
WHERE PriceBook > 80.00;