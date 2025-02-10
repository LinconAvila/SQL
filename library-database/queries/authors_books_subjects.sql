--2. We need to find out the authors' first and last names, books written by them, and the subjects of the books.

SELECT NameAuthor 'Name', LastNameAuthor 'Last name', NameBook Book, NameSubject 'Subjects'
FROM BookAuthor
JOIN Author
	ON Author.IdAuthor = BookAuthor.IdAuthor
JOIN Book
	ON Book.IdBook = BookAuthor.IdBook
JOIN Subjects
	ON Subjects.IdSubject = Book.IdSubject
ORDER BY 'Name';