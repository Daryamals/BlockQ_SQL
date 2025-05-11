WITH inc_sum AS (
    SELECT point, date, SUM(inc) AS amount
    FROM Income
    GROUP BY point, date
),
out_sum AS (
    SELECT point, date, SUM(out) AS amount
    FROM Outcome
    GROUP BY point, date
)

SELECT
    COALESCE(i.point, o.point) AS point,
    COALESCE(i.date, o.date) AS date,
    CASE
        WHEN i.point IS NOT NULL AND o.point IS NULL THEN 'inc'
        WHEN o.point IS NOT NULL AND i.point IS NULL THEN 'out'
    END AS operation_type, COALESCE(i.amount, o.amount) AS amount
FROM inc_sum i
FULL OUTER JOIN out_sum o ON i.point = o.point AND i.date = o.date
WHERE i.point IS NULL OR o.point IS NULL
