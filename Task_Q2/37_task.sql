SELECT class
FROM (
  SELECT name, class
  FROM Ships
  UNION
  SELECT o.ship, s.class
  FROM Outcomes o
  JOIN Ships s ON o.ship = s.name
  UNION
  SELECT o.ship, c.class
  FROM Outcomes o
  JOIN Classes c ON o.ship = c.class
) AS all_ships
GROUP BY class
HAVING COUNT(*) = 1
