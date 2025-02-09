-- LIKE clause (and NOT LIKE)

/*
Syntax:
SELECT columns
FROM table
WHERE column LIKE pattern;
*/

/*
Metacaracteres
% - any string of 0 or more characters
_ - any single character
[] - unique characters in the specified range or set
[^] - single characters NOT in the specified range or set
*/

SELECT * FROM Book
WHERE NameBook LIKE 't%A';

SELECT * FROM Book
WHERE NameBook LIKE '[FDA]%';

SELECT * FROM Book
WHERE NameBook LIKE '[^F^D]%';

SELECT * FROM Book
WHERE NameBook LIKE '%[aeiou]_';

SELECT NamePublisher
FROM Publisher
WHERE NamePublisher LIKE '[o-t]%';

SELECT NameAuthor, LastNameAuthor
FROM Author
WHERE NameAuthor LIKE 'J___';

SELECT * FROM Book
WHERE NameBook NOT LIKE '[aeiou0-9]%'