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
FOREIGN KEY (isbn) REFERENCES Boek(isbn) ON update cascade ON delete cascade
);

CREATE TABLE IF NOT EXISTS Bestelling (
isbn varchar(20),
aantal int(10)
);

CREATE TRIGGER addBestelling
BEFORE INSERT ON Boek
FOR EACH ROW
WHEN
(SELECT COUNT(*)
FROM Boek
WHERE Boek.Auteur = NEW.Auteur) = 0
BEGIN
	INSERT INTO Bestelling
	VALUES (NEW.isbn, 11);
END;

SELECT * FROM Bestelling;
INSERT INTO Boek
VALUES(1, '11', 'Henk'), (2, '45', 'Henk');
SELECT * FROM Boek;
SELECT * FROM Bestelling;