SELECT ROUND(MAX(LAT_N),4) - ROUND(MIN(LAT_N),4) + 
        ROUND(MAX(LONG_W),4) - ROUND(MIN(LONG_W),4)
FROM STATION;
