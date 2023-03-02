SELECT CO.CONTINENT, FLOOR(AVG(CI.POPULATION))
FROM CITY CI, COUNTRY CO
WHERE CI.CountryCode = CO.Code
GROUP BY CO.CONTINENT;