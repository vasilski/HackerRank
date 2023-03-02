SELECT RPAD('*',R * 2,' *')
FROM (SELECT ROWNUM as R from dual 
    connect by level<21
    ORDER BY R ASC);