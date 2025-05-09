SELECT o.ship AS name, c.displacement, c.numGuns
FROM Outcomes o
JOIN Ships s ON o.ship = s.name
JOIN Classes c ON s.class = c.class
WHERE o.battle = 'Guadalcanal';
