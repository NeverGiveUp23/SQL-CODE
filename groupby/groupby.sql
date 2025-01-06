
SELECT customer_id AS id, 
SUM(amount) AS customer_total,
MAX(amount) AS max
FROM payment
WHERE customer_id > 3
GROUP BY customer_id 
ORDER BY SUM(amount) ASC;


SELECT staff_id, SUM(amount) AS total_amount, COUNT(*) AS counts
FROM payment
WHERE amount <> 0
GROUP BY staff_id
ORDER BY total_amount DESC;

 SELECT customer_id,
 SUM(amount),
 COUNT(*)
 FROM payment
 GROUP BY staff_id, customer_id
 ORDER BY COUNT(*) DESC;

SELECT DATE(payment_date), *
FROM payment;


-- using the order by and date aggregate function to spit out certain data pertaining to 
-- the total amount of sales

SELECT DATE(payment_date),
staff_id,
SUM(amount) AS total_amount, 
COUNT(*)
FROM payment
WHERE amount <> 0
GROUP BY staff_id, DATE(payment_date)
ORDER BY total_amount DESC;


-- using HAVING keyword after the GROUP BY clause to get specific data from count like below

SELECT DATE(payment_date),
staff_id,
SUM(amount) AS total_amount, 
COUNT(*)
FROM payment
WHERE amount <> 0
GROUP BY staff_id, DATE(payment_date)
HAVING COUNT(*) > 500
ORDER BY total_amount DESC;

-- using HAVING. again but with the BETWEEN keyword to get specifi numbers(counts)
-- between two different ranges

SELECT DATE(payment_date),
staff_id,
SUM(amount) AS total_amount, 
COUNT(*)
FROM payment
WHERE amount <> 0
GROUP BY staff_id, DATE(payment_date)
HAVING COUNT(*) BETWEEN 200 AND 350
ORDER BY total_amount DESC;

SELECT DATE(payment_date), customer_id,
AVG(amount) AS avg_amount
FROM payment
GROUP BY customer_id, payment_date
HAVING payment_date BETWEEN DAY(27) AND DAY(30)
ORDER BY avg_amount DESC;

