SELECT DISTINCT maker,price
FROM Product
JOIN Printer ON Printer.model=Product.model
WHERE color='y' AND price = (SELECT min(price) FROM Printer WHERE color='y')
