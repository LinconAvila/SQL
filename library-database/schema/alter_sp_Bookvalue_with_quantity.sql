ALTER PROCEDURE sp_Bookvalue (@ID SMALLINT, @Q INT)
AS
BEGIN
	DECLARE @quantity INT = @Q
	SELECT 
		NameBook Title, 
		PriceBook Price, 
		@quantity Quantity, 
		(@quantity * PriceBook) Total
	FROM Book
	WHERE IdBook = @ID;
END
GO