SELECT DISTINCT b.n,
CASE 
WHEN b.p IS NULL THEN 'Root'
WHEN s.p IS NOT NULL THEN 'Inner'
WHEN s.p IS NULL THEN 'Leaf'
END
FROM bst b, bst s
WHERE  b.n = s.p(+)
ORDER BY 1;