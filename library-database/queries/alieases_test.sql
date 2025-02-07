SELECT NameBook AS Books
FROM Book;

SELECT A.NameAuthor AS Name, A.LastNameAuthor AS 'Last Name'
FROM Author AS A;

SELECT TOP (3) NameBook AS 'Most expensive books', PriceBook AS 'Price'
FROM Book AS B
ORDER BY 'Price' DESC;