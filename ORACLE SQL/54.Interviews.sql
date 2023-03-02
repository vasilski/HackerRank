SELECT T1.contest_id, T1.hacker_id, T1.name, T1.sum_total_sub, T1.sum_total_ac, T2.sum_total_view, T2.sum_unique_view
FROM (SELECT DISTINCT con.contest_id, con.hacker_id, con.name, 
        SUM(ss.total_submissions) OVER (PARTITION BY con.contest_id) sum_total_sub,
        SUM(ss.total_accepted_submissions) OVER (PARTITION BY con.contest_id) sum_total_ac
FROM Contests con, Colleges col, Challenges ch,  Submission_Stats SS
WHERE con.contest_id = col.contest_id
AND col.college_id  = ch.college_id 
AND CH.challenge_id = ss.challenge_id
ORDER BY con.contest_id) T1, 
(SELECT DISTINCT con.contest_id, SUM(vs.total_views) OVER (PARTITION BY con.contest_id) sum_total_view,
        SUM(vs.total_unique_views) OVER (PARTITION BY con.contest_id) sum_unique_view
FROM Contests con, Colleges col, Challenges ch, View_Stats VS
WHERE con.contest_id = col.contest_id
AND col.college_id  = ch.college_id 
AND ch.challenge_id = vs.challenge_id
ORDER BY con.contest_id) T2
WHERE T1.contest_id = T2.contest_id;