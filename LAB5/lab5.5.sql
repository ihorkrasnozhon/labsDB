SELECT name, population
FROM cities
WHERE region IN (
    SELECT region
    FROM cities
    GROUP BY region
    HAVING COUNT(DISTINCT name) <= 5 AND population NOT BETWEEN 150000 AND 500000
)