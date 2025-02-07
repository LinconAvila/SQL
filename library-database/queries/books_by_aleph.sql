SELECT NameBook, PubDate
FROM Book
WHERE IdPublisher = (
	SELECT IdPublisher
	FROM Publisher
	WHERE NamePublisher = 'Aleph'
)
ORDER BY NameBook;