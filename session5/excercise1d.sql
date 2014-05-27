INSERT INTO Boek
VALUES(1, "jaaa",  "wieee");

INSERT INTO Exemplaar
VALUES (1, 2, 40, 89);

SELECT * FROM Exemplaar;

UPDATE Boek
SET isbn = 2
WHERE isbn = 1;

SELECT * FROM Exemplaar;