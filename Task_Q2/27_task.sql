SELECT maker, AVG(hd)
FROM Product
JOIN PC ON PC.model=Product.model
WHERE maker IN (SELECT maker FROM Product WHERE type='Printer') AND maker IN (SELECT maker FROM Product WHERE type='PC')
GROUP BY maker
