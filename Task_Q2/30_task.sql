SELECT 
    COALESCE(i.point, o.point) AS point,
    COALESCE(i.date, o.date) AS date,
    o.total_out,
    i.total_inc
FROM (
    SELECT point, date, SUM(inc) AS total_inc
    FROM Income
    GROUP BY point, date
) AS i
FULL JOIN (
    SELECT point, date, SUM(out) AS total_out
    FROM Outcome
    GROUP BY point, date
) AS o
ON i.point = o.point AND i.date = o.date
