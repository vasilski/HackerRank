SELECT ROUND(lat_n, 4)
FROM (SELECT lat_n, COUNT(*) OVER (PARTITION BY 1) caunt_lat_n, 
      ROW_NUMBER() OVER (ORDER BY lat_n) number_of_row
      FROM STATION)
      WHERE number_of_row = ROUND(caunt_lat_n / 2)
      ORDER BY 1;