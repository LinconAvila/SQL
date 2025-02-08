-- Aggregate Functions
/*
MIN, MAX, AVG, SUM, COUNT
*/

SELECT COUNT(*) 'Total'
FROM Author;

SELECT MAX(PriceBook) 'Maximum price'
FROM Book;

SELECT MIN(NumberPages) 'Minimum pages'
FROM Book;

SELECT AVG(PriceBook) 'Average price'
FROM Book;

SELECT SUM(PriceBook) 'Total value'
FROM Book;

SELECT COUNT(*) 'Total'
FROM Book
WHERE IdSubject = 1;

SELECT SUM(PriceBook) / COUNT(*) AS 'Average price'
FROM Book;

SELECT NameBook, PriceBook
FROM Book
WHERE PriceBook = (
	SELECT MAX(PriceBook)
	FROM Book
);