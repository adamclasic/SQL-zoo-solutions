-- 1. How many stops are in the database.
SELECT COUNT(id)
FROM stops;

-- 2. Find the id value for the stop 'Craiglockhart'
SELECT id
FROM stops
  WHERE name = 'Craiglockhart';

-- 3. Give the id and the name for the stops on the '4' 'LRT' service.
SELECT id, name
FROM stops JOIN route ON (id = route.stop)
WHERE num = 4 AND company = 'LRT'
ORDER BY pos;