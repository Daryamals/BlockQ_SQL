SELECT c.class, COUNT(DISTINCT o.ship) AS sunks
FROM Classes c
JOIN Ships s ON s.class = c.class
JOIN Outcomes o ON o.ship = s.name AND o.result = 'sunk'
GROUP BY c.class
UNION
SELECT c.class, 0
FROM Classes c
WHERE c.class NOT IN (
    SELECT s.class
    FROM Ships s
    JOIN Outcomes o ON o.ship = s.name AND o.result = 'sunk'
)
