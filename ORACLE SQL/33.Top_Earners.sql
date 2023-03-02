SELECT * FROM(SELECT (months*salary), COUNT(*)
FROM Employee
GROUP BY (months*salary)
ORDER BY 1 DESC) a
WHERE rownum < 2;