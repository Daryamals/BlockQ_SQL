SELECT c.class, COALESCE(s1.launched, MIN(s2.launched)) AS year
FROM Classes c
LEFT JOIN Ships s1 ON c.class = s1.name
LEFT JOIN Ships s2 ON c.class = s2.class
GROUP BY c.class, s1.launched;
