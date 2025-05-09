SELECT maker, MIN(type) AS type
FROM Product
GROUP BY maker
HAVING COUNT(model) > 1 AND COUNT(DISTINCT type) = 1;
