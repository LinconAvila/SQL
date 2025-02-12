CREATE TRIGGER tg_insert_author
ON Author
AFTER INSERT
AS
BEGIN
	EXEC sp_query_authors;
END
GO