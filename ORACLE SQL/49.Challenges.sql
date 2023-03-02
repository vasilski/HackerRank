SELECT hacker_id, name, count_challenger
FROM (SELECT hacker_id, name, count_challenger, COUNT(*) OVER (PARTITION BY count_challenger) num_max, MAX(count_challenger) OVER (PARTITION BY 1) max_count
FROM (SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS count_challenger
    FROM hackers h, challenges c
    WHERE h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id, h.name
    ORDER BY 3 DESC, 1)
    ORDER BY 3 DESC, 1)
    WHERE num_max = 1 OR max_count = count_challenger;