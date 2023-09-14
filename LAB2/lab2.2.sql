SELECT *
FROM cities
WHERE (region = 'E' OR region = 'W')
ORDER by population;