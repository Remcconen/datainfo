SELECT p.name, m.year
FROM Person p, Movie m, Genre g, Directs d
WHERE p.pid = d.pid
AND d.mid = m.mid
AND m.mid = g.mid
AND g.genre = 'Action'
GROUP BY p.name
HAVING count(p.name) >= 2;