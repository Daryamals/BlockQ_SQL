SELECT o.ship,b.name
FROM Outcomes o
JOIN Battles b ON b.name=o.battle
WHERE o.result='sunk'
