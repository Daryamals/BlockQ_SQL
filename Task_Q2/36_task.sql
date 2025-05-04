SELECT DISTINCT ship
FROM (
    SELECT name AS ship FROM Ships
    UNION
    SELECT ship FROM Outcomes
) AS AllShips
JOIN Classes ON AllShips.ship = Classes.class;
