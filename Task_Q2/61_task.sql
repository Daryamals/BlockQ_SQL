SELECT SUM(inc_sum) - SUM(out_sum) AS total_balance
FROM (
    SELECT SUM(inc) AS inc_sum, 0 AS out_sum
    FROM Income_o
    UNION ALL
    SELECT 0 AS inc_sum, SUM(out) AS out_sum
    FROM Outcome_o
) AS totals;
