SELECT c.class, COUNT(DISTINCT o.ship) AS sunks
FROM Classes c
JOIN Ships s ON s.class = c.class
JOIN (
    SELECT class
    FROM Ships
    GROUP BY class
    HAVING COUNT(*) >= 3
) AS valid_classes ON c.class = valid_classes.class
JOIN Outcomes o ON o.ship = s.name AND o.result = 'sunk'
GROUP BY c.class
