--Insert Records

-- Table of Subjects
INSERT INTO Subjects (NameSubject)
VALUES
('Science Fiction'), ('Botany'),  
('Electronics'), ('Mathematics'),  
('Adventure'), ('Romance'),  
('Finance'), ('Gastronomy'),  
('Horror'), ('Administration'),  
('Computer Science'), ('Suspense');

-- Testing
SELECT * FROM Subjects
ORDER BY IdSubject;