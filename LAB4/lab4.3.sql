SELECT region, SUM(population) AS sum
FROM cities
WHERE region IN ('C', 'S')
GROUP BY region;