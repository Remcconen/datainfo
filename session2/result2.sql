INSERT INTO F(x, y, violation, motivation)
VALUES ("E", "D", 1, "E geeft ED geeft EDA. BCF zijn niet te krijgen"),
("D", "A", 1, "D geeft DA. BCEF zijn niet te krijgen");

INSERT INTO F1(x, y, violation, motivation)
VALUES ("E", "D", 0, "E geeft ED(gehele tabel)");

INSERT INTO F2(x, y, violation, motivation)
VALUES ("ABC", "EF", 0, "ABD geeft ABCEF(gehele tabel)"),
("E", "A", 1, "E geeft EA. BCF niet te krijgen");