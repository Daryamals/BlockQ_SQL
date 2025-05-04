SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer'
  AND maker IN (
    SELECT maker
    FROM Product
    JOIN PC ON Product.model = PC.model
    WHERE ram = (SELECT MIN(ram) FROM PC)
      AND speed = (
        SELECT MAX(speed)
        FROM PC
        WHERE ram = (SELECT MIN(ram) FROM PC)
      )
  )
