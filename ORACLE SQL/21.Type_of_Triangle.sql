SELECT
   (CASE 
    WHEN A + B <= C THEN 'Not A Triangle'
    WHEN A = B AND B = C AND A = C THEN 'Equilateral'
    WHEN A != B AND B != C AND A != C THEN 'Scalene' 
    WHEN A = B OR A = C THEN 'Isosceles' END)
FROM TRIANGLES;