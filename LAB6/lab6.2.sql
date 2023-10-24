SELECT cities.name AS city_name, cities.region AS city_region
FROM cities
INNER JOIN regions ON cities.region = regions.uuid
WHERE regions.name = 'Nord';