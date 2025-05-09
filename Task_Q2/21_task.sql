SELECT maker, MAX(price)
FROM Product
JOIN PC ON PC.model=Product.model
WHERE type = 'PC'
GROUP BY maker
