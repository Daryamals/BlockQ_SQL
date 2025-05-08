SELECT COALESCE(SUM(inc_total), 0) - COALESCE(SUM(out_total), 0) AS total_balance
FROM (
    SELECT SUM(inc) AS inc_total, 0 AS out_total
    FROM Income_o
    WHERE date < DATE '2001-04-15'
    UNION ALL
    SELECT 0 AS inc_total, SUM(out) AS out_total
    FROM Outcome_o
    WHERE date < DATE '2001-04-15'
) AS combined
