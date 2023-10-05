SELECT name, population
FROM cities
WHERE population NOT BETWEEN 150000 AND 500000
AND region IN (
    SELECT uuid
    FROM regions
    WHERE area_quantity <= 5
)