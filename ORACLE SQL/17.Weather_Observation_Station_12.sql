SELECT DISTINCT city 
FROM station
WHERE SUBSTR(CITY,1,1) 
NOT IN ('A','E','I','O','U')
AND SUBSTR(CITY,-1,1) 
NOT IN ('a','e','i','o','u');