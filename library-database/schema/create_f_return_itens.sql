-- Table-Valued Function
CREATE FUNCTION return_itens(@value REAL)
RETURNS TABLE
AS
RETURN (
	SELECT B.NameBook, S.NameSubject, P.NamePublisher
	FROM Book B
	INNER JOIN Subjects S
	ON S.IdSubject = B.IdSubject
	INNER JOIN Publisher P
	ON P.IdPublisher = B.IdPublisher
	WHERE B.PriceBook > @value
);