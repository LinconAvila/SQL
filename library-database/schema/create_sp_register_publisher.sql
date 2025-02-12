CREATE OR ALTER PROCEDURE sp_register_publisher (@PubName VARCHAR(40))
AS
BEGIN
	INSERT INTO Publisher (NamePublisher)
	VALUES (@PubName)
	SELECT IdPublisher, NamePublisher
	FROM Publisher
	WHERE NamePublisher = @PubName;
END
