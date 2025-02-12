CREATE PROCEDURE sp_Bookvalue
AS
BEGIN
	SELECT NameBook Livro, PriceBook Valor
	FROM Book;
END
GO