SELECT (CASE
       WHEN marks > 69 THEN name
       END), grade, marks 
FROM students, grades
where marks <= max_mark AND marks >= Min_mark
ORDER BY 2 DESC, STUDENTS.NAME;