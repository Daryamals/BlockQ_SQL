SELECT 
    COALESCE(i.point, o.point) AS point,
    COALESCE(i.date, o.date) AS date,
    i.inc,
    o.out
FROM Income_o i
FULL JOIN Outcome_o o
    ON i.point = o.point AND i.date = o.date
