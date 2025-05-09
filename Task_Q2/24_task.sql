WITH HighPrice AS (
    SELECT model, price
    FROM PC
    UNION
    SELECT model, price
    FROM Laptop
    UNION
    SELECT model, price
    FROM Printer
),
MaxPrice AS (
    SELECT MAX(price) AS Max_price
    FROM HighPrice
)

SELECT model
FROM HighPrice
WHERE price= (SELECT * FROM MaxPrice)
