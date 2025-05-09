SELECT DISTINCT battle
FROM Outcomes o
JOIN Ships s ON s.name=o.ship
WHERE s.class='Kongo'
