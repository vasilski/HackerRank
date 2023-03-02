SELECT s.name
FROM students s, Friends f, packages p, packages pf
WHERE s.id = f.id
AND f.id = p.id
AND pf.id = f.friend_id
AND p.salary < pf.salary
ORDER BY pf.salary;