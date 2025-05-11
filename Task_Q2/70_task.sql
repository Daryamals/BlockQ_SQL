SELECT battle
FROM (
    SELECT o.battle, c.country, COUNT(*) AS cnt
    FROM Outcomes o
    JOIN Ships s ON o.ship = s.name
    JOIN Classes c ON s.class = c.class
    GROUP BY o.battle, c.country
    HAVING COUNT(*) >= 3
) AS sub
