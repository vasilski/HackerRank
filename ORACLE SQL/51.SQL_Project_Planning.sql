SELECT MIN(Start_Date) SD, MAX(end_date) ED
FROM(SELECT Start_Date, end_date, prev_end_date, sum(
CASE 
    WHEN end_date = prev_end_date + 1 THEN 0
    ELSE 1
    END ) over(ORDER BY end_date) AS project_id
FROM (SELECT Start_Date, end_date, 
    LAG(end_date) OVER (ORDER BY end_date) AS prev_end_date
    FROM Projects))
    GROUP BY project_id
    ORDER BY (ED - SD), 1;