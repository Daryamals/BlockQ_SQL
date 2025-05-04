SELECT Classes.class,name,country
FROM Classes
JOIN Ships ON Ships.class = Classes.class
WHERE numGuns>=10
