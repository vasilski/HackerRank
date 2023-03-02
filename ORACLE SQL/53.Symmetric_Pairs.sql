SELECT DISTINCT T1.X, T1.Y
FROM functions T1
WHERE EXISTS(
    SELECT T2.X, T2.Y
    FROM functions T2
    WHERE T1.X = T2.Y 
    AND T1.Y = T2.X
    AND T1.ROWID <> T2.ROWID)
    AND T1.X <= T1.Y
    ORDER BY X;
