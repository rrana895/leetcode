-- Write an SQL query to report the name, population, and area of the big countries.

SELECT name, population, area
FROM WORLD
WHERE area >= 3000000 or population >= 25000000