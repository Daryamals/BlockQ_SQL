SELECT DISTINCT o1.ship
FROM Outcomes o1
JOIN Battles b1 ON o1.battle = b1.name
WHERE o1.result = 'damaged'
AND EXISTS (
   SELECT 1
   FROM Outcomes o2
   JOIN Battles b2 ON o2.battle = b2.name
   WHERE o2.ship = o1.ship AND b2.date > b1.date AND o2.battle <> o1.battle
)
