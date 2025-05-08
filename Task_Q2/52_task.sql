SELECT s.name
FROM Ships s
JOIN Classes c ON s.class = c.class
WHERE c.type = 'bb' AND c.country = 'Japan' AND c.numGuns >= 9 AND c.bore < 19 AND c.displacement <= 65000
