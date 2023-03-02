SELECT DOC, PRO, SING, ACT
FROM (select DOC, rownum R 
        from (SELECT NAME DOC
                FROM OCCUPATIONS
                WHERE OCCUPATION = 'Doctor'
                order by name)) a full outer join 
        (SELECT PRO, rownum R
        FROM (SELECT NAME PRO
                FROM OCCUPATIONS
                WHERE OCCUPATION = 'Professor'
                order by name)) b
                on a.r = b.r 
                full outer join
                (select SING, rownum R 
        from (SELECT NAME SING
                FROM OCCUPATIONS
                WHERE OCCUPATION = 'Singer'
                order by name)) c 
                on b.r = c.r 
                full outer join
        (SELECT ACT, rownum R
        FROM (SELECT NAME ACT
                FROM OCCUPATIONS
                WHERE OCCUPATION = 'Actor'
                order by name)) d
                ON C.R = D.R
                ORDER BY 2;