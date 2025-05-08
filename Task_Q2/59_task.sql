SELECT point, SUM(inc_sum) - SUM(out_sum) AS balance
FROM (
    SELECT point, SUM(inc) AS inc_sum, 0 AS out_sum
    FROM Income_o
    WHERE date < DATE '2001-04-15'
    GROUP BY point
    UNION ALL
    SELECT point, 0 AS inc_sum, SUM(out) AS out_sum
    FROM Outcome_o
    WHERE date < DATE '2001-04-15'
    GROUP BY point
) AS combined
GROUP BY point
