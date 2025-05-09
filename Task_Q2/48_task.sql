SELECT DISTINCT c.class
FROM Outcomes o
LEFT JOIN Ships s ON o.ship = s.name
JOIN Classes c ON s.class = c.class OR o.ship = c.class
WHERE o.result = 'sunk';
