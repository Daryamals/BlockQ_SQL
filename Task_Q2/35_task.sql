SELECT model, type
FROM Product
WHERE model ~ '^[0-9]+$'
   OR model ~* '^[A-Z]+$';
