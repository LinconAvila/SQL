ALTER PROCEDURE sp_Bookvalue
AS
BEGIN
	SELECT NameBook Livro, PriceBook Valor
	FROM Book
	WHERE PriceBook >= 150;
END
GO