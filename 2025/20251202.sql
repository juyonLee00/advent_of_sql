-- 문제 링크 : https://solvesql.com/problems/good-days-for-a-seoulforest-picnic/

SELECT
  measured_at AS good_day
FROM
  measurements
WHERE
  pm2_5 <= 9
  AND measured_at LIKE '2022-12%'
ORDER BY
  measured_at
