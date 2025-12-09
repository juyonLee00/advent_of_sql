-- 문제 : https://solvesql.com/problems/volleyball-players-with-medals/

SELECT DISTINCT
  a.id,
  a.name,
  GROUP_CONCAT(r.medal) AS medals
FROM
  athletes a
  JOIN records r ON a.id = r.athlete_id
  JOIN teams t ON r.team_id = t.id
  JOIN events e ON r.event_id = e.id
  JOIN games g ON r.game_id = g.id
WHERE
  t.team = 'KOR'
  AND e.event = 'Volleyball Women''s Volleyball'
  AND g.year <= 2016
  AND r.medal IS NOT NULL
GROUP BY
  a.id,
  a.name;
