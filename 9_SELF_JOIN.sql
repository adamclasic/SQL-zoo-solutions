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
-- 4. Add a HAVING clause to restrict the output to these two routes.
SELECT company, num, COUNT(*)
FROM route
  WHERE stop=149 OR stop=53
  GROUP BY company, num
  HAVING COUNT(*) = 2;

-- 5. Execute the self join shown and observe that b.stop gives all the places you can get to from Craiglockhart, without changing routes. Change the query so that it shows the services from Craiglockhart to London Road.
SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  WHERE a.stop=53 AND b.stop = 149;