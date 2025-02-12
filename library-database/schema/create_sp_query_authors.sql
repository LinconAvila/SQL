CREATE OR ALTER PROCEDURE sp_query_authors
AS
BEGIN
	SELECT NameAuthor, LastNameAuthor
	FROM Author
	ORDER BY NameAuthor;
END
GO