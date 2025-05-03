SELECT AVG(speed) as Avg_speed
FROM PC
JOIN Product ON PC.model=Product.model
WHERE maker = 'A'
