-- 문제 : https://solvesql.com/problems/dvdrental-vip/

SELECT
  customer.customer_id
FROM
  customer
  JOIN rental ON customer.customer_id = rental.customer_id
WHERE
  customer.active = 1
GROUP BY
  customer.customer_id
HAVING
  COUNT(rental.rental_id) >= 35;
