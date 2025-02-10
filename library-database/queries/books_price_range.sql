--6. Check prices, subjects and names of books that cost between R$70.00 and R$170.00, ordering from most expensive to cheapest.

SELECT NameBook 'Book', NameSubject 'Subject', PriceBook 'Price'
FROM Book
JOIN Subjects
	ON Subjects.IdSubject = Book.IdSubject
WHERE PriceBook BETWEEN 70.0 AND 170.0
ORDER BY Price DESC;