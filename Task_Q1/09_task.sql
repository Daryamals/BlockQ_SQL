SELECT DISTINCT maker
FROM Product
JOIN PC ON Product.model = PC.model
WHERE type = 'PC' AND speed >= 450
