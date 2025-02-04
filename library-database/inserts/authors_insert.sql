-- Authors Table 
-- 1. Insert a single line:
INSERT INTO Author (NameAuthor, LastNameAuthor)
VALUES ('Umberto', 'Eco');

-- Testing
SELECT * FROM Author

-- 2. Insert multiple distinct lines (several records):
INSERT INTO Author (NameAuthor, LastNameAuthor)
VALUES
('Daniel', 'Barret'), ('Gerald', 'Carter'), ('Mark', 'Sobell'),
('William', 'Stanek'), ('Christine', 'Bresnahan'), ('William', 'Gibson'),
('James', 'Joyce'), ('John', 'Emsley'), ('Jose', 'Saramago'),
('Richard', 'Silverman'), ('Robert', 'Byrnes'), ('Jay', 'Ts'),
('Robert', 'Eckstein'), ('Paul', 'Horowitz'), ('Winfield', 'Hill'),
('Joel', 'Murach'), ('Paul', 'Scherz'), ('Simon', 'Monk'),
('George', 'Orwell'), ('Italo', 'Calvin'), ('Machado', 'of Assisi'),
('Oliver', 'Sacks'), ('Ray', 'Bradbury'), ('Walter', 'Isaacson'),
('Benjamin', 'Graham'), ('Júlio', 'Verne'), ('Marcelo', 'Gleiser'),
('Harri', 'Lorenzi'), ('Humphrey', 'Carpenter'), ('Isaac', 'Asimov'),
('Aldous', 'Huxley'), ('Arthur', 'Conan Doyle'), ('Blaise', 'Pascal'),
('Jostein', 'Gaarder'), ('Stephen', 'Hawking'), ('Stephen', 'Jay Gould'),
('Neil', 'De Grasse Tyson'), ('Charles', 'Darwin'), ('Alan', 'Turing'),
('Arthur','C. Clarke');

-- Testing 
SELECT * FROM Author
ORDER BY IdAuthor