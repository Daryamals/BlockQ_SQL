SELECT maker, 
CASE 
   WHEN COUNT(*) FILTER (WHERE price IS NULL) > 0 THEN NULL
   ELSE MAX(price)
END AS m_price
FROM Product p
JOIN 
  (SELECT model,price
      FROM PC 
      UNION ALL
      SELECT model,price
      FROM Printer
      UNION ALL
      SELECT model,price
      FROM Laptop) as pt
ON pt.model=p.model
GROUP BY maker
