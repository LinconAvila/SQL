SELECT NamePublisher
FROM Publisher
WHERE IdPublisher IN (
	SELECT IdPublisher
	FROM Book
	WHERE IdSubject IN (
		SELECT IdSubject
		FROM Subjects
		WHERE NameSubject = 'Horror'
	)
);