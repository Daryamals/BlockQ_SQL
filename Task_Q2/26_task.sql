SELECT AVG(price) AS AVG_price
FROM (SELECT price
FROM Laptop
WHERE model IN (SELECT model FROM Product WHERE maker='A' and type='Laptop')
UNION ALL
SELECT price
FROM PC
WHERE model IN (SELECT model FROM Product WHERE maker='A' and type='PC')) AS price_PC_Laptop
