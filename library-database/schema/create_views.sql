-- Views
-- Simplify complexe queries
-- Safety
-- Abstraction
-- aggregation and summarization of data

-- Syntax:
/*
CREATE [OR ALTER] VIEW nameView AS
SELECT columns
FROM tables
*/

CREATE OR ALTER VIEW vwBookPrice AS
	SELECT TOP 5 NameBook, PriceBook
	FROM Book
	ORDER BY PriceBook;

SELECT * FROM vwBookPrice;

EXEC sp_helptext vwBookPrice;


IF OBJECT_ID('vwBookSubject', 'view') IS NOT NULL
	DROP VIEW vwBookSubject;
GO

CREATE VIEW vwBookSubject AS
	SELECT B.NameBook Book, S.NameSubject 'Subject'
	FROM Book B
	INNER JOIN Subjects S
	ON B.IdSubject = S.IdSubject
GO

ALTER VIEW vwBookSubject AS
	SELECT B.NameBook Book,B.ISBN13, S.NameSubject 'Subject'
	FROM Book B
	INNER JOIN Subjects S
	ON B.IdSubject = S.IdSubject;

DROP VIEW vwBookPrice;