INSERT INTO F(x, y, violation, motivation)
VALUES ("ABC", "EF", 0, "ABC geeft ABCEF, E geeft D, ABCEF geeft ABCEFD(gehele tabel)"),
("E", "D", 1, "E geeft ED geeft EDA. BCF zijn niet te krijgen"),
("D", "A", 1, "D geeft DA. BCEF zijn niet te krijgen");

INSERT INTO F1(x, y, violation, motivation)
VALUES ("E", "D", 0, "E geeft ED(gehele tabel)");

INSERT INTO F2(x, y, violation, motivation)
VALUES ("ABC", "EF", 0, "ABD geeft ABCEF(gehele tabel)"),
("E", "A", 1, "E geeft EA. BCF niet te krijgen");

INSERT INTO F2a(x, y, violation, motivation)
VALUES ("E", "A", 0, "E geeft EA(gehele tabel)");

INSERT INTO F2b(x, y, violation, motivation)
VALUES ("EBC", "EF", 0, "EBC geeft EBCF(gehele tabel)");