SELECT Concat(name,'(',region,')')
FROM cities
WHERE population>100000
ORDER BY name;