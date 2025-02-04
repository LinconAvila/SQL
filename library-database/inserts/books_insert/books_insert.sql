-- Books Table 
INSERT INTO Book (NameBook, ISBN13, PubDate, PriceBook,
NumberPages, IdSubject, IdPublisher)
VALUES ('The Art of Electronics', '9788582604342',
'20170308', 300.74, 1160, 3, 24),
('Twenty Thousand Leagues Under the Sea', '9788582850022', 
'2014-09-16', 24.50, 448, 1, 16), --Júlio Verne
('The Intelligent Investor', '9788595080805', 
'2016-01-25', 79.90, 450, 7, 6); --Benjamin Graham

--Testing
SELECT * FROM Book;

--Bulk insert from CSV file
INSERT INTO Book (NameBook, ISBN13, PubDate, PriceBook,
NumberPages, IdPublisher, IdSubject)
SELECT
	NameBook, ISBN13, PubDate, PriceBook, NumberPages, 
	IdPublisher, IdSubject
FROM OPENROWSET(
	BULK 'C:\books.csv', --insert proper path
	FORMATFILE = 'C:\format.xml', --insert proper path
	CODEPAGE = '65001', --UTF-8
	FIRSTROW = 2
) AS BooksCSV;

--Testing
SELECT * FROM Book;