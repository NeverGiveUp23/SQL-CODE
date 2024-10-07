-- Challenge 3

-- How many rentals have not been returned yet and is return date is null?
SELECT 
rental_date, 
customer_id, 
rental_id, 
return_date 
FROM rental 
WHERE return_date is null;

-- get a list of all payment_ids with the amount less than or equal to $2.
SELECT 
payment_id,
amount
FROM payment
WHERE amount <= 2
ORDER BY amount desc;

SELECT COUNT(*) amount FROM payment WHERE amount <= 2; -- 3644 total under $2
