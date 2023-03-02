SELECT hacker_id, name, SUM(totalScore)
    FROM (SELECT s.hacker_id, h. name, s.challenge_id, MAX(s.score) totalScore
            FROM submissions s, hackers h
            WHERE s.hacker_id = h.hacker_id
            GROUP BY s.hacker_id, s.challenge_id, h. name
            ORDER BY 3 DESC, 1)
            WHERE totalScore > 0 
            GROUP BY hacker_id, name
            ORDER BY 3 DESC, 1;