SELECT Product.model as model, price
FROM Product
JOIN PC ON Product.model=PC.model
WHERE Product.maker='B'
UNION
SELECT Product.model as model, price
FROM Product
JOIN Laptop ON Product.model=Laptop.model
WHERE Product.maker='B'
UNION
SELECT Product.model as model, price
FROM Product
JOIN Printer ON Product.model=Printer.model
WHERE Product.maker='B'
