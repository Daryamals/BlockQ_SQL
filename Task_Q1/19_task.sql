SELECT maker,AVG(Laptop.screen) AS avg_screen
FROM Product
JOIN Laptop ON Laptop.model=Product.model
GROUP BY maker
