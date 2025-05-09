SELECT DISTINCT s.name
FROM Ships s
JOIN Classes c ON s.class = c.class
WHERE c.bore = 16

UNION

SELECT DISTINCT o.ship
FROM Outcomes o
LEFT JOIN Ships s ON s.name = o.ship
LEFT JOIN Classes c ON s.class = c.class OR o.ship = c.class
WHERE c.bore = 16;
