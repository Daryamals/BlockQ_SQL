SELECT country,ROUND(AVG(mw), 2) AS mw
FROM (
SELECT Classes.country, 0.5 * POWER(Classes.bore, 3) AS mw
FROM Classes
JOIN Ships ON Ships.class = Classes.class
UNION ALL
SELECT Classes.country, 0.5 * POWER(Classes.bore, 3) AS mw
FROM Classes
WHERE Classes.class NOT IN (SELECT class FROM Ships)
) AS all_ships
GROUP BY country
