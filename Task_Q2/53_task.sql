SELECT ROUND(AVG(avgGun),2) AS avg
FROM (
    SELECT AVG(numGuns) avgGun
    FROM Classes
    WHERE type='bb'
    GROUP BY class 
) AS t
