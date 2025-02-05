-- BookAuthor Table
INSERT INTO BookAuthor(IdBook, IdAuthor)
VALUES
(100, 15),  -- The Art of Electronics - Paul Horowitz
(100, 16),  -- The Art of Electronics - Winfield Hill
(101, 27),  -- Twenty Thousand Leagues Under the Sea - Júlio Verne
(102, 26),  -- The Intelligent Investor - Benjamin Graham
(103, 41),  -- 2001 - A Space Odyssey - Arthur C. Clarke
(104, 32),  -- Brave New World - Aldous Huxley
(105, 27),  -- Around the World in Eighty Days - Júlio Verne
(106, 1),   -- The Name of the Rose - Umberto Eco
(107, 22),  -- The Posthumous Memoirs of Brás Cubas - Machado de Assis
(108, 10),  -- The Gospel According to Jesus Christ - José Saramago
(109, 21),  -- Invisible Cities - Italo Calvino
(110, 10),  -- Blindness - José Saramago
(111, 8),   -- Ulysses - James Joyce
(112, 18),  -- Practical Electronics for Inventors - Paul Scherz
(112, 19),  -- Practical Electronics for Inventors - Simon Monk
(113, 22),  -- Dom Casmurro - Machado de Assis
(114, 42),  -- Moby-Dick - Herman Melville
(115, 43),  -- Pride and Prejudice - Jane Austen
(116, 44),  -- The Catcher in the Rye - J.D. Salinger
(117, 45),  -- The Great Gatsby - F. Scott Fitzgerald
(118, 46),  -- War and Peace - Leo Tolstoy
(119, 47),  -- Crime and Punishment - Fyodor Dostoevsky
(120, 48),  -- The Hobbit - J.R.R. Tolkien
(121, 49),  -- Dune - Frank Herbert
(122, 48),  -- The Lord of the Rings - J.R.R. Tolkien
(123, 50),  -- Dracula - Bram Stoker
(124, 51);  -- Frankenstein - Mary Shelley

--Testing
SELECT * FROM BookAuthor;


--Testing with INNER JOIN
SELECT NameBook, NameAuthor, LastNameAuthor
FROM Book
INNER JOIN BookAuthor
	ON Book.IdBook = BookAuthor.IdBook
INNER JOIN Author
	ON Author.IdAuthor = BookAuthor.IdAuthor
ORDER BY NameBook
