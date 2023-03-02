SELECT LISTAGG(a, '&') WITHIN GROUP (ORDER BY a)
FROM(SELECT level a,
        CASE 
       WHEN level > 3 and mod(level,2) = 0 THEN 'not PRIME'
       WHEN level > 4 and mod(level,3) = 0 THEN 'not PRIME'
         ELSE 'PRIME'  
         END is_PRAME
         FROM dual
         connect by level <=1000) t
WHERE a > 1 
AND not EXISTS( SELECT LEVEL B
                      FROM DUAL
                      WHERE mod(a, LEVEL) = 0 and level <> 1
                      CONNECT BY LEVEL < a);