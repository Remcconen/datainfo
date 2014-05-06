SELECT p.name
FROM Person p, Writes w
WHERE w.pid NOT IN (
	SELECT w.pid
	FROM Directs d, Writes w
	WHERE d.mid = w.mid)
AND p.pid = w.pid;