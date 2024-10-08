-- noticing on row 14 that the data i $0.00 and we need to select those that are still 
-- $0 so we can accuratly collect those.

SELECT DISTINCT
amount
FROM payment;

-- Selecting all payments w/ $0
SELECT * FROM payment WHERE amount = 0;

-- Getting the total count of payments that are $0.
SELECT COUNT(*) FROM payment WHERE amount = 0;

-- Getting specific customer information for $0 payment amounts.
SELECT customer_id, payment_date, amount FROM payment WHERE amount = 0 ORDER BY customer_id ASC;




