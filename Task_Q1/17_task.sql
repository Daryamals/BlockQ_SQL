SELECT DISTINCT type,Laptop.model,speed
FROM Product
JOIN Laptop ON Product.model=Laptop.model
WHERE Laptop.speed < ALL(
SELECT min(speed) 
FROM PC)
