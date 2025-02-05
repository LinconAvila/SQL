/*Create a new table called "BooksFiction" containing all the data of books 
related to the subject with ID 1.
*/

SELECT *
INTO BooksFiction
FROM Book
WHERE IdSubject = 1;

SELECT * FROM BooksFiction;
