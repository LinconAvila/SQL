ALTER PROCEDURE sp_Bookvalue (@p1 AS INT)
AS
BEGIN
		SELECT NameBook Title , PriceBook Price
		FROM Book
		WHERE IdBook = @p1;
END
GO