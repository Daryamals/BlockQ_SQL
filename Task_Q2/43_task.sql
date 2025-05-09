SELECT b.name
FROM Battles b
WHERE NOT EXISTS (
    SELECT 1
    FROM Ships s
    WHERE s.launched = EXTRACT(YEAR FROM b.date)
)
