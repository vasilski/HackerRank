SELECT MAX(round(lat_n,4))
FROM station
WHERE LAT_N < 137.2345
ORDER BY 1;