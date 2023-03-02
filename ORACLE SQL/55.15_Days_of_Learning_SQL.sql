SELECT T1.SD, T1.CH, T2.HID, T2.NAME
FROM(SELECT submission_date SD, count(DISTINCT(hacker_id)) CH
FROM(SELECT submission_date, hacker_id, 
            (select count(distinct submission_date) 
             from submissions
             where submission_date>=to_date('2016-03-01','YYYY-MM-DD') 
             and submission_date<=s.submission_date and hacker_id=s.hacker_id) number_of_days, 
             submission_date-to_date('2016-03-01','YYYY-MM-DD') + 1 expected_number_of_days
FROM (SELECT DISTINCT hacker_id,  submission_date,
      COUNT(submission_date) OVER (PARTITION BY hacker_id) hacker_ech_day,
      ROW_NUMBER() OVER (ORDER BY submission_date) RowNumber
FROM submissions 
ORDER BY 1) S)
WHERE number_of_days=expected_number_of_days
GROUP BY submission_date) T1,
(SELECT sd, hid, name
FROM(SELECT SD, HID, name, ROW_NUMBER() OVER (PARTITION BY SD ORDER BY CHK DESC, HID) RN
    FROM(SELECT trunc(s.submission_date) SD, s.hacker_id HID, h.name name, COUNT(*) chk
        FROM submissions s, hackers h
        WHERE h.hacker_id=s.hacker_id
        GROUP BY trunc(s.submission_date), s.hacker_id, h.name
        ORDER BY 1, 3 DESC, 2))
     WHERE RN = 1) T2
     WHERE T2.SD=T1.SD;