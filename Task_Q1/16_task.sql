SELECT DISTINCT PC1.model, PC2.model, PC1.speed,PC1.ram
FROM PC as PC1
JOIN PC as PC2 ON PC1.speed=PC2.speed and PC1.ram=PC2.ram and PC1.model>PC2.model
