--Scalar Functions:
CREATE FUNCTION total_value(@lower SMALLINT, @upper SMALLINT)
RETURNS REAL
AS
BEGIN
    DECLARE @mean REAL
	SELECT @mean = AVG(PriceBook)
	FROM Book
	WHERE IdBook BETWEEN @lower AND @upper
	RETURN @mean
END;