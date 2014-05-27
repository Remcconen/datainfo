PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS Boek (
isbn varchar(20),
titel varchar(50),
auteur varchar(50),
PRIMARY KEY(isbn)
);

CREATE TABLE IF NOT EXISTS Exemplaar (
isbn varchar(20),
volgnummer varchar(20),
gewicht int(10),
kast int(10),
PRIMARY KEY (volgnummer),
FOREIGN KEY (isbn) REFERENCES Boek(isbn) ON update cascade
);

CREATE TRIGGER deleteExemplaar
AFTER DELETE ON Boek
FOR EACH ROW
BEGIN
	DELETE FROM Exemplaar
	WHERE OLD.isbn = Exemplaar.isbn;
END;