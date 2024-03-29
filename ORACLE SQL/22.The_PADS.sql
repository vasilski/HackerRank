SELECT (NAME || '(' || SUBSTR(OCCUPATION,1,1) || ')')
FROM OCCUPATIONS
ORDER BY NAME;

SELECT 
 CONCAT('There are a total of ',COUNT(*))
 || CONCAT(' ',LOWER(OCCUPATION)) || 's.'
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY 1 ASC;