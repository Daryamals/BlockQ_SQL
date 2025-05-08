SELECT
    COALESCE(i.point, o.point) AS point,
    COALESCE(SUM(i.inc), 0) - COALESCE(SUM(o.out), 0) AS balance
FROM Income_o i
FULL OUTER JOIN Outcome_o o ON i.point = o.point AND i.date = o.date
GROUP BY COALESCE(i.point, o.point)
