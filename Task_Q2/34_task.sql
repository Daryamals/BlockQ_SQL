SELECT DISTINCT Ships.name
FROM Classes
JOIN Ships ON Classes.class = Ships.class
LEFT JOIN Outcomes ON Ships.name = Outcomes.ship
WHERE Ships.launched IS NOT NULL
  AND Ships.launched >= 1922
  AND Classes.displacement > 35000
  AND Classes.type = 'bb'
