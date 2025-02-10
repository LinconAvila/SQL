--4. Return the book names and publication dates of books whose author's last name begins with the letter B.

SELECT NameBook, PubDate
FROM Book
JOIN BookAuthor
    ON Book.IdBook = BookAuthor.IdBook
JOIN Author
    ON Author.IdAuthor = BookAuthor.IdAuthor
WHERE Author.LastNameAuthor LIKE 'B%';