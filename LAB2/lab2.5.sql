SELECT *
FROM cities
WHERE NOT region IN ('E', 'W')
ORDER BY population
LIMIT 10 OFFSET 10;