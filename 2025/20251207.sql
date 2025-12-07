-- 문제 : https://solvesql.com/problems/bad-finddust-days-in-a-row/

SELECT
  m3.measured_at AS date_alert
FROM
  measurements m3
  JOIN measurements m2 ON m2.measured_at = DATE_SUB(m3.measured_at, INTERVAL 1 DAY)
  JOIN measurements m1 ON m1.measured_at = DATE_SUB(m3.measured_at, INTERVAL 2 DAY)
WHERE
  m1.pm10 < m2.pm10
  AND m2.pm10 < m3.pm10
  AND m3.pm10 >= 30
ORDER BY
  date_alert ASC
