-- 문제 : https://solvesql.com/problems/whales-of-december/

SELECT
  customer_id
FROM
  records
WHERE
  order_date LIKE '2020-12%'
GROUP BY
  customer_id
HAVING
  SUM(sales) >= 1000;
