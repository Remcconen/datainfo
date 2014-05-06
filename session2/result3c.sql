SELECT p.Name
FROM Person p, Writes w
WHERE w.mid NOT IN (SELECT d.mid FROM Directs d)
AND p.pid = w.pid;