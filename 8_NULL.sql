-- 1. List the teachers who have NULL for their department.
SELECT name
FROM teacher
  WHERE dept IS NULL;

-- 2. Note the INNER JOIN misses the teachers with no department and the departments with no teacher.
SELECT teacher.name, dept.name
FROM teacher INNER JOIN dept
    ON (teacher.dept=dept.id);


-- 3. Use a different JOIN so that all teachers are listed.
SELECT teacher.name, dept.name
FROM teacher LEFT JOIN dept
    ON (teacher.dept=dept.id);


-- 4. Use a different JOIN so that all departments are listed.
SELECT teacher.name, dept.name
FROM teacher RIGHT JOIN dept
    ON (teacher.dept=dept.id);

-- 5. Show teacher name and mobile number or '07986 444 2266'.
SELECT name, COALESCE(mobile, '07986 444 2266') as mobile
FROM teacher;

-- 6. Use the COALESCE function and a LEFT JOIN to print the teacher name and department name. Use the string 'None' where there is no department.
SELECT teacher.name, COALESCE(dept.name, 'None')
FROM teacher LEFT JOIN dept
    ON (teacher.dept=dept.id);