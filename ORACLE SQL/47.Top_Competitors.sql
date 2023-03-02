SELECT hacker_id, name
from (SELECT h.hacker_id, h.name, COUNT(DISTINCT(s.challenge_id))
FROM submissions s, hackers h, challenges ch, difficulty df
WHERE s.hacker_id = h.hacker_id
AND df.difficulty_level = ch.difficulty_level
AND df.score = s.score
      AND ch.challenge_id = s.challenge_id
GROUP BY h.hacker_id, h.name
having COUNT(DISTINCT(s.challenge_id)) > 1
ORDER BY 3 DESC, h.hacker_id);