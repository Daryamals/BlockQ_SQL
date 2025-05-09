SELECT ROUND(AVG(numGuns * 1.0), 2) AS avg_numg
FROM (
    SELECT c.numGuns
    FROM Ships s
    JOIN Classes c ON s.class = c.class
    WHERE c.type = 'bb'
    UNION ALL
    SELECT c.numGuns
    FROM Outcomes o
    JOIN Classes c ON o.ship = c.class
    WHERE o.ship NOT IN (SELECT name FROM Ships)
      AND c.type = 'bb'
) AS all_bb;
