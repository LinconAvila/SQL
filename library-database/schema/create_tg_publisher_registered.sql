CREATE OR ALTER TRIGGER tg_publisher_registered
ON Publisher
AFTER INSERT
AS 
BEGIN
	SELECT CONCAT('There are ', COUNT(*), ' registered publishers') AS Registers
	FROM Publisher;
END
GO