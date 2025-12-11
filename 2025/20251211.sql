-- 문제 : https://solvesql.com/problems/revenue-weekday-weekend/

SELECT
  CASE
    WHEN day IN ('Sat', 'Sun') THEN 'weekend'
    ELSE 'weekday'
  END AS week,
  SUM(total_bill) AS sales
FROM
  tips
GROUP BY
  week
ORDER BY
  sales DESC
