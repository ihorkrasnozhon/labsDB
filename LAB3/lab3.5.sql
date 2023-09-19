SELECT CONCAT(name, ' - ', (population/400000), '%')
FROM cities
WHERE (population/400000)>0.1
ORDER BY (population/400000);