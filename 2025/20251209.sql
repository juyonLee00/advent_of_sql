-- 문제 : https://solvesql.com/problems/volleyball-players-in-two-consecutive-olympics/

SELECT DISTINCT
  a.id,
  a.name
FROM
  records r
  JOIN athletes a ON r.athlete_id = a.id
  JOIN teams t ON r.team_id = t.id
  JOIN events e ON r.event_id = e.id
  JOIN games g ON r.game_id = g.id
  JOIN records r2 ON r.athlete_id = r2.athlete_id
  JOIN games g2 ON r2.game_id = g2.id
WHERE
  t.team = 'KOR'
  AND e.event = 'Volleyball Women''s Volleyball'
  AND g.year <= 2016
  AND g2.year = g.year + 4
