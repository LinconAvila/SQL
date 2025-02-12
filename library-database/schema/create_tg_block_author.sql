CREATE OR ALTER TRIGGER tg_block_author
ON Author
INSTEAD OF INSERT
AS
BEGIN 
	PRINT 'Author registration not allowed at this time';
END
GO