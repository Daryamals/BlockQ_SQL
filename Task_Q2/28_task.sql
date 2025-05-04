SELECT COUNT(*) AS qty
FROM (
SELECT maker
FROM Product
GROUP BY maker
HAVING COUNT(model)=1
) AS maker_one_model
